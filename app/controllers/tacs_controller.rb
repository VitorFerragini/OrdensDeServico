class TacsController < ApplicationController
  before_action :set_tac, only: [:show, :edit, :update, :destroy]

  # GET /tacs
  # GET /tacs.json
  def index
    @tacs = Tac.all
  end

  # GET /tacs/1
  # GET /tacs/1.json
  def show
  end

  # GET /tacs/new
  def new
    @tac = Tac.new
  end

  # GET /tacs/1/edit
  def edit
  end

  # POST /tacs
  # POST /tacs.json
  def create
    @tac = Tac.new(tac_params)

    respond_to do |format|
      if @tac.save
        format.html { redirect_to @tac, notice: 'Tac was successfully created.' }
        format.json { render :show, status: :created, location: @tac }
      else
        format.html { render :new }
        format.json { render json: @tac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tacs/1
  # PATCH/PUT /tacs/1.json
  def update
    respond_to do |format|
      if @tac.update(tac_params)
        format.html { redirect_to @tac, notice: 'Tac was successfully updated.' }
        format.json { render :show, status: :ok, location: @tac }
      else
        format.html { render :edit }
        format.json { render json: @tac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tacs/1
  # DELETE /tacs/1.json
  def destroy
    @tac.destroy
    respond_to do |format|
      format.html { redirect_to tacs_url, notice: 'Tac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tac
      @tac = Tac.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tac_params
      params.require(:tac).permit(:numero)
    end
end
