Rails.application.routes.draw do
  root 'books#index'
  get 'books/new'
end
