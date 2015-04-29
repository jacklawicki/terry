class VendorfinancesController < ApplicationController
  before_action :set_vendorfinance, only: [:show, :edit, :update, :destroy]

  # GET /vendorfinances
  # GET /vendorfinances.json
  def index
    @vendorfinances = Vendorfinance.all
  end
  def summary
    @vendorfinances = Vendorfinance.all
  end

  # GET /vendorfinances/1
  # GET /vendorfinances/1.json
  def show
  end

  # GET /vendorfinances/new
  def new
    @vendorfinance = Vendorfinance.new
  end

  # GET /vendorfinances/1/edit
  def edit
  end

  # POST /vendorfinances
  # POST /vendorfinances.json
  def create
    @vendorfinance = Vendorfinance.new(vendorfinance_params)

    respond_to do |format|
      if @vendorfinance.save
        format.html { redirect_to @vendorfinance, notice: 'Vendorfinance was successfully created.' }
        format.json { render :show, status: :created, location: @vendorfinance }
      else
        format.html { render :new }
        format.json { render json: @vendorfinance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendorfinances/1
  # PATCH/PUT /vendorfinances/1.json
  def update
    respond_to do |format|
      if @vendorfinance.update(vendorfinance_params)
        format.html { redirect_to @vendorfinance, notice: 'Vendorfinance was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendorfinance }
      else
        format.html { render :edit }
        format.json { render json: @vendorfinance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendorfinances/1
  # DELETE /vendorfinances/1.json
  def destroy
    @vendorfinance.destroy
    respond_to do |format|
      format.html { redirect_to vendorfinances_url, notice: 'Vendorfinance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendorfinance
      @vendorfinance = Vendorfinance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendorfinance_params
      params.require(:vendorfinance).permit(:description, :value)
    end
end
