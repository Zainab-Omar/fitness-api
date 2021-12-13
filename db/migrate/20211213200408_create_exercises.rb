class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :body_part
      t.string :equipment
      t.string :gif_url
      t.string :name
      t.string :target
      t.integer :user_id

      t.timestamps
    end
  end
end
