class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :angular], user:{except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
	
  def index
      @portfolio_items = Portfolio.by_position
	end

  def angular
      @angular_portfolio_items = Portfolio.angular
  end

  def rails
      @rails_portfolio_items = Portfolio.rails
  end

	def new
      @portfolio_item = Portfolio.new
      3.times { @portfolio_item.technologies.build }
	end

	def create
	  @portfolio_item = Portfolio.new(portfolio_params)

    #helyben ez lenne a new utan: (params.require(:portfolio).permit(:title, :subtitle, :body, :thumb_image))	

	  respond_to do |format|
	  	if @portfolio_item.save
	  		format.html {redirect_to portfolios_path, notice: "Your portfolio item is on live now."}
	  	else
	  		format.html {render :new }
	  	end
	  end
	end

	def edit
       
	end

	def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
       #ugyan ugy az elternativa helyben: (params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
  	#Perform to look up
  	# ez akkor kene ha nem lette before axtion: @portfolio_item = Portfolio.find(params[:id])
    #Destroy tyhe recrod
  	@portfolio_item.destroy
    #Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully destroyed.' }
    end
  end

  private #ez azt jeelnti hogy csak ebben a classban jelen esetben ebben a fileban hasznalhato (hivhato)
  
  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body, 
                                      :thumb_image,
                                      :main_image, 
                                      technologies_attributes: [:id, :name, :_destroy]
                                      )
  end

  def set_portfolio_item
     @portfolio_item = Portfolio.find(params[:id])
  end

end
