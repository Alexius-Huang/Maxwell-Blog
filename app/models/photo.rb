class Photo < ActiveRecord::Base
	validates :title, :description, :url, presence: true
end
