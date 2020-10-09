class FasesController < ApplicationController
  before_action :set_fase, only: [:show, :edit, :update, :destroy]

  # GET /fases
  # GET /fases.json
  def index
    @fases = Fase.all
  end

  # GET /fases/1
  # GET /fases/1.json
  def show
  end

  # GET /fases/new
  def new
    @fase = Fase.new
  end

  # GET /fases/1/edit
  def edit
  end

  # POST /fases
  # POST /fases.json
  def create
    @fase = Fase.new(fase_params)

    respond_to do |format|
      if @fase.save
        format.html { redirect_to @fase, notice: 'Fase was successfully created.' }
        format.json { render :show, status: :created, location: @fase }
      else
        format.html { render :new }
        format.json { render json: @fase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fases/1
  # PATCH/PUT /fases/1.json
  def update
    respond_to do |format|
      if @fase.update(fase_params)
        format.html { redirect_to @fase, notice: 'Fase was successfully updated.' }
        format.json { render :show, status: :ok, location: @fase }
      else
        format.html { render :edit }
        format.json { render json: @fase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fases/1
  # DELETE /fases/1.json
  def destroy
    @fase.destroy
    respond_to do |format|
      format.html { redirect_to fases_url, notice: 'Fase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fase
      @fase = Fase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fase_params
      params.require(:fase).permit(:nome)
    end
end
