class AboutMesController < ApplicationController

  def index
    @about_mes = AboutMe.all
    render json: @about_mes
  end

  def create
    @about_me = AboutMe.new(about_me_params)
    if @about_me.save
      render json: { status: "successfully created!" }
    else
      render json: @about_me.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @about_me
  end

  def destroy
    if @about_me.destroy
      render json: { status: "successfully deleted!" }
    elses
      render json: @about_me.errors, status: :unprocessable_entity
    end
  end

  def update
    if @about_me.update(about_me_params)
      render json: { status: "successfully updated!" }
    else
      render json: @about_me.errors, status: :unprocessable_entity
    end
  end

  private

    def set_about_me
      @about_me = AboutMe.find(params[:id])
    end

    def about_mes_params
      params.require(:about_me).permit(
        :name,
        :description,
        :created_at,
        :updated_at
      )
    end

end
