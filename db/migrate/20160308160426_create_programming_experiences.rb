class CreateProgrammingExperiences < ActiveRecord::Migration
  def change
    create_table :programming_experiences do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
