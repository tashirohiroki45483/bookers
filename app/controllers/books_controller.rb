class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.new
    @book2 = Book.all  
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def show
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
