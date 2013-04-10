class NewspapersController < ApplicationController
  def index
    @newspaper = Newspaper.all
  end

  def show
    @newspaper = Newspaper.find_by_id(params[:id])
  end

  def new
    @newspaper = Newspaper.new
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
    @newspaper.update_attributes(params[:newspaper])
    if @newspaper.save
      redirect_to newspaper_path(@newspaper)
    else
      render :edit
    end
  end

  def destroy
    @newspaper = Newspaper.find_by_id(params[:id])
    @newspaper.destroy
  end
end
