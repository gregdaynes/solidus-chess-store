require 'rails_helper'

describe Game, type: :model do
  let(:player_one) { create(:player) }
  let(:player_two) { create(:player) }
  subject { create(:game, player_one: player_one, player_two: player_two) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  it 'references player one properly' do
    expect(subject.player_one).to eq(player_one)
  end

  it 'references player two properly' do
    expect(subject.player_two).to eq(player_two)
  end
end
