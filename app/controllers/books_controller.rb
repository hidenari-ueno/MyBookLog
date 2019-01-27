class BooksController < ApplicationController

  def index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create!(create_params)
    render :index
  end

  private
  def create_params
    params.require(:book).permit(:title, :author, :publisher, :price, :genre, :keyword, :summary, :image).merge(user_id: current_user.id)
  end
end
