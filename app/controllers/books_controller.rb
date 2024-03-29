class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
  	@books = Book.all
  end

  def new
  	@book = Book.new
  end

  def show
  end

  def edit
  end

  def create
  	@book = Book.new(book_params)
  	if @book.save
  		redirect_to @book, notice: "New book created."
  	else
  		render :new
  	end
  end

  def update
  	if @book.update(book_params)
  		redirect_to @book, notice: "Book was updated."
  	else
  		render :edit
  	end
  end

  def destroy
  	@book.destroy
  	redirect_to books_path, notice: "Book was deleted."
  end

  private

  def book_params
  	params.require(:book).permit(:title, :author, :description)
  end

  def set_book
  	@book = Book.find(params[:id])
  end
end
