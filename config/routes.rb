Bloccit::Application.routes.draw do

  resources :labels, only: [:show]

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  post 'users/confirm'
  
  resources :advertisements

  resources :questions

  get 'about' => 'welcome#about'

  get 'welcome/faq'
  get 'welcome/contact'

  root to: 'welcome#index'
  
end
