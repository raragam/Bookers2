class UsersController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
    @books = @user.books
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @user = User.find(params[:id])
    @book_new = Book.new
    @books = Book.all
    @user = current_user
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
    @user = current_user
    @books = @user.books
  end
end
