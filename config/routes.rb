Rails.application.routes.draw do

  devise_for :admins
  root 'home#index'

  devise_scope :admin do
    get 'admins/manage_articles' , to: 'admins/registrations#manage_articles'
    get 'admins/manage_photos'   , to: 'admins/registrations#manage_photos'
  end

  resources :articles
  resources :photos

  ["ruby", "rails"].each do |lang|
  	resources "#{lang}_discussions".to_sym
  end

end
