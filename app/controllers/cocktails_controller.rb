class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
  def show
  end
  def new
    @cocktail = Cocktail.new
  end
  def edit
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path, notice: 'cocktail was successfully created.'
    else
      render :new
    end
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end


end
