class CreateRailsDiscussions < ActiveRecord::Migration
  def change
    create_table :rails_discussions do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
