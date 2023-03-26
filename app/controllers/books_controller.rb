class BooksController < ApplicationController
  def new
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(list_params)
    book.save
    redirect_to list_path(list.id)
  end

  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
