class PetsController < ApplicationController
    def index
        @pets = Pet.all
    end

    def show
        @pet = Pet.find(params[:id])
    end

    def new
        @pet = Pet.new
    end

    def create
        @pet = Pet.new(pet_params)
        redirect_to pet_path(@pet) if @pet.save
    end

    def edit
        @pet = Pet.find(params[:id])
    end

    def update
        @pet = Pet.find(params[:id])
        @pet.update(pet_params)
        redirect_to pet_path(@pet) if @pet.save
    end

    private

    def pet_params
        params.require(:pet).permit(:color, :breed, :rescued)
    end
end
