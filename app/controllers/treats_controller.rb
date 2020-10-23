class TreatsController < ApplicationController

  def index
    @treats = Treat.all
  end

  def new
    @treat = Treat.new
  end

  def create
    @treat = Treat.create(treat_params)
    redirect_to treats_path
  end

  private

  def treat_params
    params.require(:treat).permit(:name, :picture_url, :ingredients, :rating)
  end

end
