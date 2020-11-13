class TreatsController < ApplicationController
  include SessionsHelper
  before_action :redirect_if_not_logged_in
  before_action :find_treat, only: [:show, :edit, :update, :destroy]

  def index
    @treats = Treat.all
  end

  def new
    @treat = Treat.new
  end

  def create
    @treat = Treat.new(treat_params)
    @treat.user = current_user
    @treat.save
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

  def redirect_if_not_logged_in
    redirect_to new_session_path if !current_user
  end

end
