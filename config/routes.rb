Rails.application.routes.draw do

  devise_for :admins
  root 'home#index'

  devise_scope :admin do
    get 'admins/manage_articles' , to: 'admins/registrations#manage_articles'
    get 'admins/manage_photos'   , to: 'admins/registrations#manage_photos'
  end

  ["articles", "photos", "ruby_discussions", "rails_discussions", "ruby_gems"].each.to_sym do |routes|
  	resources routes do
  		resources :comments
  	end
  end

  get 'computer_science', to: 'home#computer_science'

end
