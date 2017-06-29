class Player < ApplicationRecord
  has_many :moves

  validates :username, presence: true, uniqueness: true

  def games
    Game.where('player_one_id = :id OR player_two_id = :id', { id: id })
  end
end
