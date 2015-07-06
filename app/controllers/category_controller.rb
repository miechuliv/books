class CategoryController < ApplicationController
  before_action :set_categories, only: [:index, :show]
  before_action :set_books, only: [:index]

  def index

  end

  def show
    @category = Category.find(params[:id])
    @books = @category.books.where(status: true)
    render :index
  end

  def set_categories
    @categories = Category.all.where(status: true)
  end

  def set_books
    if params[:search_name].present?
      @books = Book.search(params[:search_name], where: { status: true})
    else
      @books = Book.all.where(status: true)
    end
  end
end
