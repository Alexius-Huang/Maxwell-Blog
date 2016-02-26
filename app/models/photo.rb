class Photo < ActiveRecord::Base
	has_many :comments, as: :commentable
	validates :title, :description, :url, presence: true
end
