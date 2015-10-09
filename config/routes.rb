Bloccit::Application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :advertisements

  resources :questions

  get 'about' => 'wlcome#about'

  get 'welcome/faq'
  get 'welcome/contact'

  root to: 'welcome#index'
  
end
