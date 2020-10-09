class CoordenadoriasController < ApplicationController
  before_action :set_coordenadoria, only: [:show, :edit, :update, :destroy]

  # GET /coordenadorias
  # GET /coordenadorias.json
  def index
    @coordenadorias = Coordenadoria.all
  end

  # GET /coordenadorias/1
  # GET /coordenadorias/1.json
  def show
  end

  # GET /coordenadorias/new
  def new
    @coordenadoria = Coordenadoria.new
  end

  # GET /coordenadorias/1/edit
  def edit
  end

  # POST /coordenadorias
  # POST /coordenadorias.json
  def create
    @coordenadoria = Coordenadoria.new(coordenadoria_params)

    respond_to do |format|
      if @coordenadoria.save
        format.html { redirect_to @coordenadoria, notice: 'Coordenadoria was successfully created.' }
        format.json { render :show, status: :created, location: @coordenadoria }
      else
        format.html { render :new }
        format.json { render json: @coordenadoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordenadorias/1
  # PATCH/PUT /coordenadorias/1.json
  def update
    respond_to do |format|
      if @coordenadoria.update(coordenadoria_params)
        format.html { redirect_to @coordenadoria, notice: 'Coordenadoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordenadoria }
      else
        format.html { render :edit }
        format.json { render json: @coordenadoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordenadorias/1
  # DELETE /coordenadorias/1.json
  def destroy
    @coordenadoria.destroy
    respond_to do |format|
      format.html { redirect_to coordenadorias_url, notice: 'Coordenadoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordenadoria
      @coordenadoria = Coordenadoria.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coordenadoria_params
      params.require(:coordenadoria).permit(:descricao)
    end
end
