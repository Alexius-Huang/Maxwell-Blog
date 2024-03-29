class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.belongs_to :commentable, polymorphic: true
      # t.integer :commentable_id
      # t.string :commentable_type

      t.timestamps null: false
    end
    add_index :comments, [:commentable_id, :commentable_type]
  end
end
