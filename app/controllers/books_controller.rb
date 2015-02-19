class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_url(@book)
    else
      flash.now[:errors] = @book.errors.full_messages
      render :new
    end
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      redirect_to book_url(@book)
    else
      flash.now[:errors] = @book.errors.full_messages
      render :edit
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_url
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  private
  def book_params
    params.require(:book).permit(:author, :title, :publication_date, :dewey_decimal_number, :status)
  end
end
