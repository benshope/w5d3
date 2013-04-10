class NewspapersController < ApplicationController
  def index
    @newspapers = Newspaper.all
  end

  def show
    @newspaper = Newspaper.find_by_id(params[:id])
  end

  def new
    @newspaper = Newspaper.new
    @newspaper.subscription_plans.build
  end

  def create
    @newspaper = Newspaper.new(params[:newspaper])
    if @newspaper.save
      redirect_to newspaper_path(@newspaper)
    else
      render :new
    end
  end

  def edit
    @newspaper = Newspaper.find_by_id(params[:id])
  end

  def update
    @newspaper = Newspaper.find_by_id(params[:id])
    if @newspaper.update_attributes(params[:newspaper])
      redirect_to newspaper_path(@newspaper)
    else
      render :edit
    end
  end

  def destroy
    @newspaper = Newspaper.find_by_id(params[:id])
    @newspaper.destroy
    redirect_to newspapers_path
  end
end
