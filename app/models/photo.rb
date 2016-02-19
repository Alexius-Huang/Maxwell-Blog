class Photo < ActiveRecord::Base
	validates :title, :description, :image_file, presence: true

	has_attached_file :image_file
  # Validate content type
  validates_attachment_content_type :image_file, content_type: /\Aimage/
  # Validate filename
  validates_attachment_file_name :image_file, matches: [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :image_file
end
