class Move < ApplicationRecord
  belongs_to :game
  belongs_to :player

  validates :move_number, numericality: { only_integer: true, greater_than: 0 }
  validates :source, :destination, format: { with: /\A[a-h]{1}[1-8]{1}\z/ }
  validates :game, :player, presence: true
end
