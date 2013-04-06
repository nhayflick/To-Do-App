class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @selected = params[:team_id] ? params[:team_id] : 1
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_url(@project)
    else
      render new_project_url
    end
  end
end
