class AddUrlToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :url, :string
  end
end
