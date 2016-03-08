Rails.application.routes.draw do

  devise_for :admins
  root 'home#index'

  devise_scope :admin do
    get 'admins/manage_articles' , to: 'admins/registrations#manage_articles'
    get 'admins/manage_photos'   , to: 'admins/registrations#manage_photos'
  end

  ["articles", "photos", "ruby_discussions", "rails_discussions", "ruby_gems", "programming_basics", "programming_experiences"].each do |routes|
  	resources routes.to_sym do
  		resources :comments
  	end
  end

  get 'computer_science', to: 'home#computer_science'

end
