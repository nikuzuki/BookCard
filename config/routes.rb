Rails.application.routes.draw do
  get 'cards/index'
  get 'cards', to: 'cards#index'
  
  get 'cards/show'

  get 'cards/add'

  get 'cards/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
