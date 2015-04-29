class ShareportfoliosController < ApplicationController
  before_action :set_shareportfolio, only: [:show, :edit, :update, :destroy]

  # GET /shareportfolios
  # GET /shareportfolios.json
  def index
    @shareportfolios = Shareportfolio.all
  end
  
  def summary
    @shareportfolios = Shareportfolio.all
  end

  # GET /shareportfolios/1
  # GET /shareportfolios/1.json
  def show
  end

  # GET /shareportfolios/new
  def new
    @shareportfolio = Shareportfolio.new
  end

  # GET /shareportfolios/1/edit
  def edit
  end

  # POST /shareportfolios
  # POST /shareportfolios.json
  def create
    @shareportfolio = Shareportfolio.new(shareportfolio_params)

    respond_to do |format|
      if @shareportfolio.save
        format.html { redirect_to @shareportfolio, notice: 'Shareportfolio was successfully created.' }
        format.json { render :show, status: :created, location: @shareportfolio }
      else
        format.html { render :new }
        format.json { render json: @shareportfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shareportfolios/1
  # PATCH/PUT /shareportfolios/1.json
  def update
    respond_to do |format|
      if @shareportfolio.update(shareportfolio_params)
        format.html { redirect_to @shareportfolio, notice: 'Shareportfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @shareportfolio }
      else
        format.html { render :edit }
        format.json { render json: @shareportfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shareportfolios/1
  # DELETE /shareportfolios/1.json
  def destroy
    @shareportfolio.destroy
    respond_to do |format|
      format.html { redirect_to shareportfolios_url, notice: 'Shareportfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shareportfolio
      @shareportfolio = Shareportfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shareportfolio_params
      params.require(:shareportfolio).permit(:description, :value)
    end
end
