Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/my-books')

  get '/my-books', to: 'books#my_books', as: 'my-books'
end
