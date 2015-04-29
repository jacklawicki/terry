class PagesController < ApplicationController
	
  def home
  end

   
	def summary
    @entities = Entity.all
    @cashes = Cash.all
    @moneyowings = Moneyowing.all
    @termdeposits = Termdeposit.all
    @shareportfolios = Shareportfolio.all
    @properties = Property.all
    @businessinvestments = Businessinvestment.all
     @vendorfinances = Vendorfinance.all
     @mortgages = Mortgage.all
  	end

end
