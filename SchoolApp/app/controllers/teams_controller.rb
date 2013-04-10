class TeamsController < ApplicationController
  def index
  	@teams = Team.all
  end

  def show
  	@team = Team.find_by_id(params[:id])
  end

  def new
  	@team = Team.new
  	@team.students.build
  end

  def create
  	@team = Team.new(params[:team])

  	if @team.save
  		redirect_to teams_path
  	else
  		render :new
  	end
  end
end
