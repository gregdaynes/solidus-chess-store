class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.belongs_to :player_one
      t.belongs_to :player_two

      t.timestamps
    end
  end
end
