class AddEsforcoRelacionamentoAndTotalEsforcoToOrdensDeServico < ActiveRecord::Migration[6.0]
  def change
    add_column :ordens_de_servico, :esforco_relacionamento, :decimal
    add_column :ordens_de_servico, :total_esforco, :decimal
  end
end
