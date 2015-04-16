Games::Application.routes.draw do
  # get 'rock_paper_scissors/new'

  # get 'rock_paper_scissors/show'

  root 'games#index'
  resources "rock_paper_scissors", only: [:new, :show]
  resources 'games', only: [:index]
  resources "secret_numbers", only: [:new, :show]
end
