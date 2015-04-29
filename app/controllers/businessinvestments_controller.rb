class BusinessinvestmentsController < ApplicationController
  before_action :set_businessinvestment, only: [:show, :edit, :update, :destroy]

  # GET /businessinvestments
  # GET /businessinvestments.json
  def index
    @businessinvestments = Businessinvestment.all
  end
   def summary
    @businessinvestments = Businessinvestment.all
  end

  # GET /businessinvestments/1
  # GET /businessinvestments/1.json
  def show
  end

  # GET /businessinvestments/new
  def new
    @businessinvestment = Businessinvestment.new
  end

  # GET /businessinvestments/1/edit
  def edit
  end

  # POST /businessinvestments
  # POST /businessinvestments.json
  def create
    @businessinvestment = Businessinvestment.new(businessinvestment_params)

    respond_to do |format|
      if @businessinvestment.save
        format.html { redirect_to @businessinvestment, notice: 'Businessinvestment was successfully created.' }
        format.json { render :show, status: :created, location: @businessinvestment }
      else
        format.html { render :new }
        format.json { render json: @businessinvestment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businessinvestments/1
  # PATCH/PUT /businessinvestments/1.json
  def update
    respond_to do |format|
      if @businessinvestment.update(businessinvestment_params)
        format.html { redirect_to @businessinvestment, notice: 'Businessinvestment was successfully updated.' }
        format.json { render :show, status: :ok, location: @businessinvestment }
      else
        format.html { render :edit }
        format.json { render json: @businessinvestment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businessinvestments/1
  # DELETE /businessinvestments/1.json
  def destroy
    @businessinvestment.destroy
    respond_to do |format|
      format.html { redirect_to businessinvestments_url, notice: 'Businessinvestment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_businessinvestment
      @businessinvestment = Businessinvestment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def businessinvestment_params
      params.require(:businessinvestment).permit(:description, :value)
    end
end
