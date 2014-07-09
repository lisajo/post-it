PostitTemplate::Application.routes.draw do
  root to: 'posts#index'
  resources :posts, except:  [:destroy]  
  resources :comments, only: [:create, :show]
  resources :categories, only: [:new, :create, :show]

end
