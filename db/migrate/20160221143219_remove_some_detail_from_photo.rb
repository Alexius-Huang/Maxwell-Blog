class RemoveSomeDetailFromPhoto < ActiveRecord::Migration
  def change
  	remove_column :admins, :avatar_file_name
  	remove_column :admins, :avatar_content_type
		remove_column :admins, :avatar_file_size
		remove_column :admins, :avatar_updated_at

  	remove_column :photos, :image_file_file_name
  	remove_column :photos, :image_file_content_type
		remove_column :photos, :image_file_file_size
		remove_column :photos, :image_file_updated_at		
  end
end
