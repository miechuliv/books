class HomeController < ApplicationController
  before_action :set_categories, only: [:index, :show]
  before_action :set_books, only: [:index]

  def index
  end

  def show
    @category = Category.find(params[:id])
  end

  def set_categories
    @categories = Category.all
  end

  def set_books
    @books = Book.all
  end
end
