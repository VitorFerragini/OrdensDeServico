class PasController < ApplicationController
  before_action :set_pa, only: [:show, :edit, :update, :destroy]

  # GET /pas
  # GET /pas.json
  def index
    @pas = Pa.all
  end

  # GET /pas/1
  # GET /pas/1.json
  def show
  end

  # GET /pas/new
  def new
    @pa = Pa.new
  end

  # GET /pas/1/edit
  def edit
  end

  # POST /pas
  # POST /pas.json
  def create
    @pa = Pa.new(pa_params)

    respond_to do |format|
      if @pa.save
        format.html { redirect_to @pa, notice: 'Pa was successfully created.' }
        format.json { render :show, status: :created, location: @pa }
      else
        format.html { render :new }
        format.json { render json: @pa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pas/1
  # PATCH/PUT /pas/1.json
  def update
    respond_to do |format|
      if @pa.update(pa_params)
        format.html { redirect_to @pa, notice: 'Pa was successfully updated.' }
        format.json { render :show, status: :ok, location: @pa }
      else
        format.html { render :edit }
        format.json { render json: @pa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pas/1
  # DELETE /pas/1.json
  def destroy
    @pa.destroy
    respond_to do |format|
      format.html { redirect_to pas_url, notice: 'Pa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pa
      @pa = Pa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pa_params
      params.require(:pa).permit(:numero)
    end
end
