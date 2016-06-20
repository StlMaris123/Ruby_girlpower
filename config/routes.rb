Rails.application.routes.draw do
  get 'users/new'

  #get 'users/new'

   root 'static_pages#home'

  get  'about'   => 'static_pages#about'
  get  'faq'     =>  'static_pages#faq'
  get  'contact' => 'static_pages#contact'
  get 'signup' =>  'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#resources 'users'
end

