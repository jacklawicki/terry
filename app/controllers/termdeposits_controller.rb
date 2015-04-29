class TermdepositsController < ApplicationController
  before_action :set_termdeposit, only: [:show, :edit, :update, :destroy]

  # GET /termdeposits
  # GET /termdeposits.json
  def index
    @termdeposits = Termdeposit.all
  end

  def summary
    @termdeposits = Termdeposit.all
  end

  # GET /termdeposits/1
  # GET /termdeposits/1.json
  def show
  end

  # GET /termdeposits/new
  def new
    @termdeposit = Termdeposit.new
  end

  # GET /termdeposits/1/edit
  def edit
  end

  # POST /termdeposits
  # POST /termdeposits.json
  def create
    @termdeposit = Termdeposit.new(termdeposit_params)

    respond_to do |format|
      if @termdeposit.save
        format.html { redirect_to @termdeposit, notice: 'Termdeposit was successfully created.' }
        format.json { render :show, status: :created, location: @termdeposit }
      else
        format.html { render :new }
        format.json { render json: @termdeposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /termdeposits/1
  # PATCH/PUT /termdeposits/1.json
  def update
    respond_to do |format|
      if @termdeposit.update(termdeposit_params)
        format.html { redirect_to @termdeposit, notice: 'Termdeposit was successfully updated.' }
        format.json { render :show, status: :ok, location: @termdeposit }
      else
        format.html { render :edit }
        format.json { render json: @termdeposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /termdeposits/1
  # DELETE /termdeposits/1.json
  def destroy
    @termdeposit.destroy
    respond_to do |format|
      format.html { redirect_to termdeposits_url, notice: 'Termdeposit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_termdeposit
      @termdeposit = Termdeposit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def termdeposit_params
      params.require(:termdeposit).permit(:description, :value)
    end
end
