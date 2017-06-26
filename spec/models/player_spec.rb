require 'rails_helper'

describe Player, type: :model do
  subject { create(:player) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  describe '#games' do
    let(:other_player) { create(:player) }
    let!(:game) { create(:game, player_one: subject, player_two: other_player) }

    it 'references all of the games they have played' do
      expect(subject.games.first).to eq(game)
    end
  end
end
