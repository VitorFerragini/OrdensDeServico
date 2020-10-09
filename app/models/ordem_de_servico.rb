class OrdemDeServico < ApplicationRecord
  belongs_to :pa
  belongs_to :tc
  belongs_to :tac
  belongs_to :coordenadoria, optional: true
  belongs_to :area, optional: true
  belongs_to :tipo, optional: true
  belongs_to :sistema, optional: true
  belongs_to :fase

  validates :numero, presence: true

  default_scope { order 'ordens_de_servico.numero DESC' }

  scope :ativas, -> { joins(:fase).where.not(fases: { nome: ['Finalizada', 'Cancelada'] }) }
  scope :encerradas, -> { joins(:fase).where(fases: { nome: ['Finalizada', 'Cancelada'] }) }
  scope :finalizadas, -> { joins(:fase).where(fases: { nome: 'Finalizada' }) }
  scope :canceladas, -> { joins(:fase).where(fases: { nome: 'Cancelada' }) }
  # scope :mes_ano, -> (date) { where(fatura: date.beginning_of_month..date.end_of_month) }
  # scope :faturas, -> { select(:fatura).distinct }

  before_validation :calcular_mes_da_fatura

  # Lista com todos os meses (mês/ano) de faturas, começando pela mais recente
  def self.faturas
    OrdemDeServico.select(:fatura).where.not(fatura: nil).distinct.reorder(fatura: :desc)
  end

  # Soma de todas as horas faturáveis de um determinado mês
  def self.soma_fatura(mes_fatura)
    OrdemDeServico.finalizadas.where(fatura: mes_fatura).sum(:esforco_realizado)
  end

  # Traz as horas faturáveis de uma ordem de serviço
  def horas_faturaveis
    esforco_realizado
  end

  # Método para mostrar a formatação com nome do mês por extenso e ano
  def l_fatura
    if fatura
      I18n.l(fatura, format: :long_fatura)
    end
  end

  private
    # Regra de Negócio
    # - Se o mês e ano da fatura não forem especificados:
    # --- Se a data de entrega for até o dia 20 do mês, entra para a fatura do mês;
    # --- Se a data de entrega for a partir do dia 21, entra para a fatura do mês seguinte.
    def calcular_mes_da_fatura
      if data_entrega && fatura.nil?
        if data_entrega.day <= 20
          self.fatura = data_entrega.beginning_of_month
        else
          self.fatura = data_entrega.end_of_month + 1.day
        end
      end
    end
end
