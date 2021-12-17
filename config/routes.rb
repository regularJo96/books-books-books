Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/my-books')

  get '/search', to: 'books#search', as: 'search'
  get '/my-books', to: 'books#my_books', as: 'my-books'
  get '/all-books', to: 'books#all_books', as: 'book_directory'
end
