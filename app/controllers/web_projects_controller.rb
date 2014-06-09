class WebProjectsController < ApplicationController

  def index
    @web_projects = WebProject.all
    render json: @web_projects
  end

  def create
    @web_project = WebProject.new(web_project_params)
    if @web_project.save
      render json: { status: "successfully created!" }
    else
      render json: @web_project.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @web_project
  end

  def destroy
    if @web_project.destroy
      render json: { status: "successfully deleted!" }
    elses
      render json: @web_project.errors, status: :unprocessable_entity
    end
  end

  def update
    if @web_project.update(web_project_params)
      render json: { status: "successfully updated!" }
    else
      render json: @web_project.errors, status: :unprocessable_entity
    end
  end

  private

    def set_web_project
      @web_project = WebProject.find(params[:id])
    end

    def web_projects_params
      params.require(:web_project).permit(
        :name,
        :description,
        :created_at,
        :updated_at
      )
    end

end
