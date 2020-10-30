class TreatsController < ApplicationController
  before_action :find_treat, only: [:show, :edit, :update, :destroy]

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

  def show
  end

  def edit
  end

  def update
    @treat.update(treat_params)
    redirect_to treat_path(@treat)
  end

  def destroy
    @treat.destroy
    redirect_to treats_path
  end

  private

  def find_treat
    @treat = Treat.find_by_id(params[:id])
    redirect_to treats_path if !@treat
  end

  def treat_params
    params.require(:treat).permit(:name, :picture_url, :ingredients, :rating)
  end

end
