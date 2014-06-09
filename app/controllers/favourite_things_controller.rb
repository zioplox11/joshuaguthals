class FavouriteThingsController < ApplicationController

  def index
    @favourite_things = FavouriteThing.all
    render json: @favourite_things
  end

  def create
    @favourite_thing = FavouriteThing.new(favourite_thing_params)
    if @favourite_thing.save
      render json: { status: "successfully created!" }
    else
      render json: @favourite_thing.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @favourite_thing
  end

  def destroy
    if @favourite_thing.destroy
      render json: { status: "successfully deleted!" }
    elses
      render json: @favourite_thing.errors, status: :unprocessable_entity
    end
  end

  def update
    if @favourite_thing.update(favourite_thing_params)
      render json: { status: "successfully updated!" }
    else
      render json: @favourite_thing.errors, status: :unprocessable_entity
    end
  end

  private

    def set_favourite_thing
      @favourite_thing = FavouriteThing.find(params[:id])
    end

    def favourite_things_params
      params.require(:favourite_thing).permit(
        :name,
        :description,
        :created_at,
        :updated_at
      )
    end

end
