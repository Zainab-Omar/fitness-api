class CreateBmis < ActiveRecord::Migration[6.1]
  def change
    create_table :bmis do |t|
      t.float :bmi
      t.string :health
      t.string :healthy_bmi_range
      t.integer :user_id

      t.timestamps
    end
  end
end
