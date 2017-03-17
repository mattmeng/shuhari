Rails.application.routes.draw do
  resources :team_member_achievements
  resources :achievements
  resources :goals
  resources :team_members
  resources :users
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
