FinePrint::Engine.routes.draw do
  root controller: 'home', action: 'index'

  resources :contracts do
    resources :signatures, :only => [:index, :new, :create, :destroy], :shallow => true

    member do
      post :new_version
      put :publish
      put :unpublish
    end
  end
end
