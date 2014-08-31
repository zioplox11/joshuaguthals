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
    @about_me = AboutMe.all
    about_mes = {}
    about_mes_length = @about_me.length
    about_mes[:about_mes_length] = about_mes_length
    me_counter = 0
    about_mes[:about_mes] = []
    @about_me.each do |about_me|
    @about_me = {
      name: about_me.name,
      description: about_me.description
    }
    photo_length = about_me.photos.length
    @about_me[:photo_length] = photo_length
    if (photo_length > 0)
      counter = 0
      @about_me[:photos] = []
      photo_length.times do
          @about_me[:photos][counter]={}
          @about_me[:photos][counter][:photo] = about_me.photos[counter].image_url
          @about_me[:photos][counter][:photo_des] = about_me.photos[counter].description
          counter += 1
      end
    end
    about_mes[:about_mes][me_counter] = @about_me
    me_counter += 1
  end
    render json: about_mes
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
