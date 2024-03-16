class BooksController < ApplicationController
  def new
    @book = Books.new
  end
  
  def create
    @book = Books.new(book_params)
    if @book.save
      flash[:notice]="Book was successfully created."
      redirect_to book_params(@book.id)
    else
      render:now
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
