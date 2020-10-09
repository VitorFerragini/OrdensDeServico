class OrdensDeServicoController < ApplicationController
  before_action :set_ordem_de_servico, only: [:show, :edit, :update, :destroy]

  # GET /ordens_de_servico
  # GET /ordens_de_servico.json
  def index
    # @ordens_de_servico = OrdemDeServico.all
    # render json: @ordens_de_servico

    # @os_finalizadas = OrdemDeServico.joins(:fase).where(fases: { nome: ['Finalizada', 'Cancelada'] })
    # @os_ativas = @ordens_de_servico.select{ |os| os.fase.nome != ['Finalizada', 'Cancelada'] }
    # @os_encerradas = @ordens_de_servico.select{ |os| os.fase.nome == ['Finalizada', 'Cancelada'] }
    
    if params[:fatura].present?
      @ordens_de_servico = OrdemDeServico.where(fatura: params[:fatura]).includes(:coordenadoria).includes(:area).includes(:tipo).includes(:sistema).includes(:fase)
      params[:busca] = nil
    elsif params[:busca].present?
      @ordens_de_servico = OrdemDeServico.where(numero: params[:busca])
    else
      @ordens_de_servico = OrdemDeServico.all.includes(:coordenadoria).includes(:area).includes(:tipo).includes(:sistema).includes(:fase)
    end
  end

  # GET /ordens_de_servico/1
  # GET /ordens_de_servico/1.json
  def show
  end

  # GET /ordens_de_servico/new
  def new
    @ordem_de_servico = OrdemDeServico.new
  end

  # GET /ordens_de_servico/1/edit
  def edit
  end

  # POST /ordens_de_servico
  # POST /ordens_de_servico.json
  def create
    @ordem_de_servico = OrdemDeServico.new(ordem_de_servico_params)

    respond_to do |format|
      if @ordem_de_servico.save
        format.html { redirect_to ordens_de_servico_url, notice: 'Ordem de serviço foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @ordem_de_servico }
      else
        format.html { render :new }
        format.json { render json: @ordem_de_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordens_de_servico/1
  # PATCH/PUT /ordens_de_servico/1.json
  def update
    respond_to do |format|
      if @ordem_de_servico.update(ordem_de_servico_params)
        format.html { redirect_to ordens_de_servico_url, notice: 'Ordem de serviço foi atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @ordem_de_servico }
      else
        format.html { render :edit }
        format.json { render json: @ordem_de_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordens_de_servico/1
  # DELETE /ordens_de_servico/1.json
  def destroy
    @ordem_de_servico.destroy
    respond_to do |format|
      format.html { redirect_to ordens_de_servico_url, notice: 'Ordem de serviço foi excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem_de_servico
      @ordem_de_servico = OrdemDeServico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ordem_de_servico_params
      params.require(:ordem_de_servico).permit(:numero, :pa_id, :tc_id, :tac_id, :data_emissao, :coordenadoria_id, :area_id, :responsavel, :emergencial, :tipo_id, :sistema_id, :data_necessidade, :data_entrega, :esforco_estimado, :fase_id, :fatura, :esforco_realizado, :data_aceite, :obs, :solicitacao, :titulo, :ss, :esforco_relacionamento, :total_esforco, :busca)
    end
end
