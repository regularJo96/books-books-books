Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/my-books')

  get '/search', to: 'books#search', as: 'search'
  get '/my-books', to: 'books#my_books', as: 'my-books'
  get '/all-books', to: 'books#all_books', as: 'book_directory'

  get '/add-book/:isbn', to: 'books#add_book', as: 'add_book'

  # google authentication route
  get '/auth/:provider/callback', to:'sessions#omniauth', as: 'google_authentication'

end
