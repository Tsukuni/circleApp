class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :friend_photo1
      t.string :friend_photo2
      t.string :friend_photo3
      t.string :friend_photo4
      t.text :context

      t.timestamps
    end
  end
end
