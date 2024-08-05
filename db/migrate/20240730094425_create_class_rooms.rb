class CreateClassRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :class_rooms do |t|
      t.integer :room_num
      t.integer :floor

      t.timestamps
    end
  end
end
