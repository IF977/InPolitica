class DeputadosController < ApplicationController
  before_action :set_deputado, only: [:show, :edit, :update, :destroy]
  require 'httparty'

  # GET /deputados
  # GET /deputados.json
  def index
    @isIndex = true
    @deputados = Deputado.all
  end

  # GET /deputados/1
  # GET /deputados/1.json
  def show
  end
  
  # GET /deputados/lista
  def list
    api = CamaraApi.new(1)
    @deputados = api.deputados['dados']
  end
  
  # GET /quem-somos
  def about
  end

  # GET /deputados/new
  def new
    @deputado = Deputado.new
  end

  # GET /deputados/1/edit
  def edit
  end

  # POST /deputados
  # POST /deputados.json
  def create
    @deputado = Deputado.new(deputado_params)

    respond_to do |format|
      if @deputado.save
        format.html { redirect_to @deputado, notice: 'Deputado was successfully created.' }
        format.json { render :show, status: :created, location: @deputado }
      else
        format.html { render :new }
        format.json { render json: @deputado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deputados/1
  # PATCH/PUT /deputados/1.json
  def update
    respond_to do |format|
      if @deputado.update(deputado_params)
        format.html { redirect_to @deputado, notice: 'Deputado was successfully updated.' }
        format.json { render :show, status: :ok, location: @deputado }
      else
        format.html { render :edit }
        format.json { render json: @deputado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deputados/1
  # DELETE /deputados/1.json
  def destroy
    @deputado.destroy
    respond_to do |format|
      format.html { redirect_to deputados_url, notice: 'Deputado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deputado
      @deputado = Deputado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deputado_params
      params.require(:deputado).permit(:nome, :idade, :url_foto,:partido_id,:estado_id)
    end
end
