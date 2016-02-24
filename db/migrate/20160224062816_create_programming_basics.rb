class CreateProgrammingBasics < ActiveRecord::Migration
  def change
    create_table :programming_basics do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
