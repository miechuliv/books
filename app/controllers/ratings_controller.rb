class RatingsController < ApplicationController

  before_action :set_rating, only: [:show, :edit, :update, :destroy]
  before_action :set_books, only: [:new, :edit, :create, :update]
  before_action :authenticate_is_admin

  def index
    @ratings = Rating.all
  end

  def show
  end

  def new
    @rating = Rating.new
  end

  def edit
  end

  def create
    @rating = Rating.new(rating_params)
    respond_to do |format|
      if @rating.save
        format.html { redirect_to @rating, notice: 'Rating was successfully created.' }
        format.json { render :show, status: :created, location: @rating }
      else
        format.html { render :new }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @rating.update(rating_params)
        format.html { redirect_to @rating, notice: 'Rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @rating }
      else
        format.html { render :edit }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rating.destroy
    respond_to do |format|
      format.html { redirect_to ratings_path, notice: 'Rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_rating
    @rating = Rating.find(params[:id])
  end

  def set_books
    @books = Book.all
    @rating_values = ['1','2','3','4','5']
  end

  def rating_params
    params.require(:rating).permit(:book_id, :value)
  end
end
