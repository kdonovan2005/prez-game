Rails.application.routes.draw do
  resources :cards, only: [:index, :create, :new, :edit, :show, :update]
  resources :games, only: [:index, :create, :new, :edit, :show, :update]
  resources :players, only: [:index, :create, :new, :edit, :show, :update]

  delete 'cards/:id', to: 'cards#destroy', as: 'delete_card'
  delete 'players/:id', to: 'players#destroy', as: 'delete_bitch'
  delete 'games/:id', to: 'games#destroy', as: 'delete_all_the_things'

  get '/', to: "application#index"
  # get 'cards/index'
  #
  # get 'cards/new'
  #
  # get 'cards/create'
  #
  # get 'cards/show'
  #
  # get 'cards/edit'
  #
  # get 'cards/update'
  #
  # get 'cards/destroy'
  #
  # get 'players/index'
  #
  # get 'players/new'
  #
  # get 'players/create'
  #
  # get 'players/show'
  #
  # get 'players/edit'
  #
  # get 'players/update'
  #
  # get 'players/destroy'
  #
  # get 'games/index'
  #
  # get 'games/new'
  #
  # get 'games/create'
  #
  # get 'games/show'
  #
  # get 'games/edit'
  #
  # get 'games/update'
  #
  # get 'games/destroy'


end
