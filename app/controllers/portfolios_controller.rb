class PortfoliosController < ApplicationController

	def index
		@portfolio_items = Portfolio.all
	end # index

	def new
		@portfolio_item = Portfolio.new
	end # new

  # POST /portfolios
  # POST /portfolios.json
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle , :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your post is now live.' }
      else
        format.html { render :new }
      end # if condition
    end # do 
  end # create

end # class
