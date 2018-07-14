class PortfoliosController < ApplicationController

	def index
		@portfolio_items = Portfolio.all
	end # index

	def new
		@portfolio_items = Portfolio.new
	end # new

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end # show  

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

  def edit
  	@portfolio_item = Portfolio.find(params[:id])
  end # edit

  def update
    respond_to do |format|
    	@portfolio_item = Portfolio.find(params[:id])

      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle , :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end  

end # class
