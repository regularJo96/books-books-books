class BooksController < ApplicationController

  require 'faraday'
  require 'json'

  def all_books
    response = Faraday.get "https://www.googleapis.com/books/v1/volumes?q=flowers+inauthor:keyes"
    @items = JSON.parse(response.body)["items"]
    render :book_directory
  end

  def my_books
    render :my_books
  end

  def search
    @passed = params[:search]

    response = Faraday.get "https://www.googleapis.com/books/v1/volumes?q="+@passed
    if(response.status != 200)
      @results = nil
    else
      @results = JSON.parse(response.body)["items"]
    end
   
    render :results
  end

  def add_book
    @isbn = params[:isbn]
    render :my_books
  end

end
