class Admins::RegistrationsController < Devise::RegistrationsController

  def manage_articles
    @articles = Article.order("created_at DESC").all
  end

  def manage_photos
    @photos = Photo.order("created_at DESC").all
  end

end
