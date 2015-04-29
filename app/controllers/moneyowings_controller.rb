class MoneyowingsController < ApplicationController
  before_action :set_moneyowing, only: [:show, :edit, :update, :destroy]

  # GET /moneyowings
  # GET /moneyowings.json
  def index
    @moneyowings = Moneyowing.all
  end
def summary
    @moneyowings = Moneyowing.all
  end
  # GET /moneyowings/1
  # GET /moneyowings/1.json
  def show
  end

  # GET /moneyowings/new
  def new
    @moneyowing = Moneyowing.new
  end

  # GET /moneyowings/1/edit
  def edit
  end

  # POST /moneyowings
  # POST /moneyowings.json
  def create
    @moneyowing = Moneyowing.new(moneyowing_params)

    respond_to do |format|
      if @moneyowing.save
        format.html { redirect_to @moneyowing, notice: 'Moneyowing was successfully created.' }
        format.json { render :show, status: :created, location: @moneyowing }
      else
        format.html { render :new }
        format.json { render json: @moneyowing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moneyowings/1
  # PATCH/PUT /moneyowings/1.json
  def update
    respond_to do |format|
      if @moneyowing.update(moneyowing_params)
        format.html { redirect_to @moneyowing, notice: 'Moneyowing was successfully updated.' }
        format.json { render :show, status: :ok, location: @moneyowing }
      else
        format.html { render :edit }
        format.json { render json: @moneyowing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moneyowings/1
  # DELETE /moneyowings/1.json
  def destroy
    @moneyowing.destroy
    respond_to do |format|
      format.html { redirect_to moneyowings_url, notice: 'Moneyowing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moneyowing
      @moneyowing = Moneyowing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moneyowing_params
      params.require(:moneyowing).permit(:description, :value)
    end
end
