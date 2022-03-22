class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    dog = Dog.create(dog_params)

    redirect_to dogs_path
  end

  def edit
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :motto)
  end
end
