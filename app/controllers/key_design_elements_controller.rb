class KeyDesignElementsController < ApplicationController

  def index
    @key_design_elements = KeyDesignElement.all
    render json: @key_design_elements
  end

  def create
    @key_design_element = KeyDesignElement.new(key_design_element_params)
    if @key_design_element.save
      render json: { status: "successfully created!" }
    else
      render json: @key_design_element.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @key_design_element
  end

  def destroy
    if @key_design_element.destroy
      render json: { status: "successfully deleted!" }
    elses
      render json: @key_design_element.errors, status: :unprocessable_entity
    end
  end

  def update
    if @key_design_element.update(key_design_element_params)
      render json: { status: "successfully updated!" }
    else
      render json: @key_design_element.errors, status: :unprocessable_entity
    end
  end

  private

    def set_key_design_element
      @key_design_element = KeyDesignElement.find(params[:id])
    end

    def key_design_elements_params
      params.require(:key_design_element).permit(
        :name,
        :description,
        :dev_tool_url,
        :created_at,
        :updated_at
      )
    end

end
