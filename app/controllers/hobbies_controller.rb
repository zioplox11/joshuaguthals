class HobbiesController < ApplicationController

  def index
    @hobbies = Hobby.all
    render json: @hobbies
  end

  def create
    @hobby = Hobby.new(hobby_params)
    if @hobby.save
      render json: { status: "successfully created!" }
    else
      render json: @hobby.errors, status: :unprocessable_entity
    end
  end

  def show
    @hobby = Hobby.find_by({finder: params[:interest]})
    hobby = {
      name: @hobby.name,
      description: @hobby.description
    }
    if (length = @hobby.photos.length > 0)
      counter = 0
      length.times do
          photo = 'photo' + counter.to_s
          photo_des = photo + '_des'
          hobby[photo.to_sym] = @hobby.photos[counter].image_url
          hobby[photo_des.to_sym] = @hobby.photos[counter].description
          counter += 1
      end
    end

binding.pry

    render json: hobby
  end

  def destroy
    if @hobby.destroy
      render json: { status: "successfully deleted!" }
    elses
      render json: @hobby.errors, status: :unprocessable_entity
    end
  end

  def update
    if @hobby.update(hobby_params)
      render json: { status: "successfully updated!" }
    else
      render json: @hobby.errors, status: :unprocessable_entity
    end
  end

  private

    def set_hobby
      @hobby = Hobby.find(params[:id])
    end

    def hobbies_params
      params.require(:hobby).permit(
        :name,
        :description,
        :finder,
        :created_at,
        :updated_at
      )
    end

end
