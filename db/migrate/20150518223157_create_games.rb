class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.float :rate

      t.timestamps
    end
  end
end
