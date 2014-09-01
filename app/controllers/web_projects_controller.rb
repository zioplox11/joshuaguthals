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
    @portfolio = WebProject.all
    portfolios = {}
    portfolios_length = @portfolio.length
    portfolios[:portfolios_length] = portfolios_length
    me_counter = 0
    portfolios[:portfolios] = []
    @portfolio.each do |portfolio|
    @portfolio = {
      name: portfolio.name,
      description: portfolio.description,
      technologies_used: portfolio.key_dev_element,
      project_url: portfolio.project_url
    }

    photo_length = portfolio.photos.length
    @portfolio[:photo_length] = photo_length
    if (photo_length > 0)
      counter = 0
      @portfolio[:photos] = []
      photo_length.times do
          @portfolio[:photos][counter]={}
          @portfolio[:photos][counter][:photo] = portfolio.photos[counter].image_url
          @portfolio[:photos][counter][:photo_des] = portfolio.photos[counter].description
          counter += 1
      end
    end

    key_design_element_length = portfolio.key_design_elements.length
    @portfolio[:key_design_element_length] = key_design_element_length
    if (key_design_element_length > 0)
      counter = 0
      @portfolio[:key_design_elements] = []
      key_design_element_length.times do
          @portfolio[:key_design_elements][counter]={}
          @portfolio[:key_design_elements][counter][:key_design_element_name] = portfolio.key_design_elements[counter].name
          if (!portfolio.key_design_elements[counter].dev_tool_url.nil?)
            @portfolio[:key_design_elements][counter][:key_design_element_url] = portfolio.key_design_elements[counter].dev_tool_url
          end
          if (!portfolio.key_design_elements[counter].description.nil?)
          @portfolio[:key_design_elements][counter][:key_design_element_des] = portfolio.key_design_elements[counter].description
          end
          counter += 1
      end
    end


    portfolios[:portfolios][me_counter] = @portfolio
    me_counter += 1
  end

    render json: portfolios
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
        :key_dev_element,
        :created_at,
        :updated_at
      )
    end

end
