class PetsController < ApplicationController
  before_action :set_pet, only: %i[ show edit update destroy ]
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      flash[:notice] = '投稿しました！'
      redirect_to root_path
    else
      flash.now[:alert] = '保存できませんでした'
      render :index
    end
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :index
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @pet.destroy

    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def pet_params
    # params.require(:pet).permit(:name, :age, :castration, :category, :character, :avairable_area, :animal_type, :description, :image1, :image2, :image3, :image4, :gender)
    params.require(:pet).permit(:name,:age , :description ,:image)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
