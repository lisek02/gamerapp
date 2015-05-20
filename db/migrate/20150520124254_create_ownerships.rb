class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
    add_index :ownerships, :user_id
    add_index :ownerships, :game_id
    add_index :ownerships, [:user_id, :game_id], unique: true
  end
end
