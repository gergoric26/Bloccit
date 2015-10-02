Bloccit::Application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/faq'

  get 'welcome/contact'

  root to: 'welcome#index'
  
end
