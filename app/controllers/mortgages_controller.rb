class MortgagesController < ApplicationController
  before_action :set_mortgage, only: [:show, :edit, :update, :destroy]

  # GET /mortgages
  # GET /mortgages.json
  def index
    @mortgages = Mortgage.all
  end
  def summary
    @mortgages = Mortgage.all
  end
  # GET /mortgages/1
  # GET /mortgages/1.json
  def show
  end

  # GET /mortgages/new
  def new
    @mortgage = Mortgage.new
  end

  # GET /mortgages/1/edit
  def edit
  end

  # POST /mortgages
  # POST /mortgages.json
  def create
    @mortgage = Mortgage.new(mortgage_params)

    respond_to do |format|
      if @mortgage.save
        format.html { redirect_to @mortgage, notice: 'Mortgage was successfully created.' }
        format.json { render :show, status: :created, location: @mortgage }
      else
        format.html { render :new }
        format.json { render json: @mortgage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mortgages/1
  # PATCH/PUT /mortgages/1.json
  def update
    respond_to do |format|
      if @mortgage.update(mortgage_params)
        format.html { redirect_to @mortgage, notice: 'Mortgage was successfully updated.' }
        format.json { render :show, status: :ok, location: @mortgage }
      else
        format.html { render :edit }
        format.json { render json: @mortgage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mortgages/1
  # DELETE /mortgages/1.json
  def destroy
    @mortgage.destroy
    respond_to do |format|
      format.html { redirect_to mortgages_url, notice: 'Mortgage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mortgage
      @mortgage = Mortgage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mortgage_params
      params.require(:mortgage).permit(:description, :value)
    end
end
