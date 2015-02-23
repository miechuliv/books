class SubcategoriesController < ApplicationController
  def index
    @subcategory = Subcategory.all
  end

  def show
    @subcategory = Subcategory.find(params[:id])
  end

  def new
    @subcategory = Subcategory.new
  end

  def create
    @category = Category.find(params[:category_id])
    @subcategory = @category.subcategories.new(subcategory_params)
    @subcategory.status = TRUE

    if @subcategory.save
      redirect_to categories_path
    else
      render 'new'
    end

  end

  def edit
  end

  def destroy
  end

  private
  def subcategory_params
    params.require(:subcategory).permit(:title, :description, :status)
  end

end
