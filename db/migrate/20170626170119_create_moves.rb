class CreateMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :moves do |t|
      t.string :source
      t.string :destination
      t.integer :move_number
      t.belongs_to :game
      t.belongs_to :player

      t.timestamps
    end
  end
end
