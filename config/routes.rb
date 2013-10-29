CraigslistJr::Application.routes.draw do
  root :to => 'posts#index'
  resources :posts
  resources :users
  get '/posts/:id/delete' => 'posts#delete'
end
