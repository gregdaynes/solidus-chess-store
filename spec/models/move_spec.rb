require 'rails_helper'

describe Move, type: :model do
  let(:player_one) { create(:player) }
  let(:player_two) { create(:player) }
  let(:game) { create(:game, player_one: player_one, player_two: player_two) }

  subject { create(:move, player: player_one, game: game) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  it 'references the moving player properly' do
    expect(subject.player).to eq(player_one)
  end

  it 'references the game properly' do
    expect(subject.game).to eq(game)
  end
end
