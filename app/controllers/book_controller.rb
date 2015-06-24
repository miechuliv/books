class BookController < ApplicationController

  def show
    @book = Book.find(params[:id])
    @comments = @book.comments.order('created_at DESC')
    @comment = Comment.new
  end


  def comment_create_by_user
    @book = Book.find(comment_params['book_id'])
    @comment = @book.comments.create(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to book_show_path(:id => comment_params['book_id']), notice: 'Comment was successfully created.' }
        format.json { redirect_to book_show_path(:id => comment_params['book_id']) }
      else
        flash.alert = 'Can not add comment right now'
        flash.alert = comment_params
        format.html { redirect_to book_show_path(:id => comment_params['book_id']) }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end


  def comment_params
    params.require(:comment).permit(:user, :text, :status, :book_id)
  end
end
