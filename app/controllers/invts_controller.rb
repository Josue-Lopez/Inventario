class InvtsController < ApplicationController
  before_action :set_invt, only: [:show, :edit, :update, :destroy]

  # GET /invts
  # GET /invts.json
  def index
    @invts = Invt.all
  end

  # GET /invts/1
  # GET /invts/1.json
  def show
  end

  # GET /invts/new
  def new
    @invt = Invt.new
  end

  # GET /invts/1/edit
  def edit
  end

  # POST /invts
  # POST /invts.json
  def create
    @invt = Invt.new(invt_params)

    respond_to do |format|
      if @invt.save
        format.html { redirect_to @invt, notice: 'El producto fue almacenado exitosamented.' }
        format.json { render :show, status: :created, location: @invt }
      else
        format.html { render :new }
        format.json { render json: @invt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invts/1
  # PATCH/PUT /invts/1.json
  def update
    respond_to do |format|
      if @invt.update(invt_params)
        format.html { redirect_to @invt, notice: 'El producto fue actualizado exitosamente' }
        format.json { render :show, status: :ok, location: @invt }
      else
        format.html { render :edit }
        format.json { render json: @invt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invts/1
  # DELETE /invts/1.json
  def destroy
    @invt.destroy
    respond_to do |format|
      format.html { redirect_to invts_url, notice: 'El producto fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invt
      @invt = Invt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invt_params
      params.require(:invt).permit(:producto, :existencia, :precio, :descripcion, :fecha)
    end
end
