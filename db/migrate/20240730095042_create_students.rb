class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :roll
      t.string :name
      t.references :class_room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
