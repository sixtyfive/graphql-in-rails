class ThingsController < ApplicationController
  def index
    @things = Thing.all
  end

  def show
    @thing = Thing.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def thing_params
    params.require(:thing).permit(:name, :yes_or_no)
  end
end
