Bloccit::Application.routes.draw do
  
  resources :posts

  get 'about' => 'wlcome#about'

  get 'welcome/faq'
  get 'welcome/contact'

  root to: 'welcome#index'
  
end
