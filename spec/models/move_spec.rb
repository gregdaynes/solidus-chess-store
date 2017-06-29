require 'rails_helper'

describe Move, type: :model do
  let(:player_one) { create(:player) }
  let(:player_two) { create(:player) }
  let(:game) { create(:game, player_one: player_one, player_two: player_two) }

  subject { build(:move, player: player_one, game: game) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  it 'references the moving player properly' do
    expect(subject.player).to eq(player_one)
  end

  it 'references the game properly' do
    expect(subject.game).to eq(game)
  end

  it 'is invalid without a move number' do
    subject.move_number = nil
    expect(subject).not_to be_valid
  end

  it 'is invalid without a source cell' do
    subject.source = nil
    expect(subject).not_to be_valid
  end

  it 'is invalid with an improper source cell' do
    subject.source = 'f9'
    expect(subject).not_to be_valid
  end

  it 'is valid with a source cell that is on the board' do
    subject.source = 'c8'
    expect(subject).to be_valid
  end

  it 'is invalid without a destination cell' do
    subject.destination = nil
    expect(subject).not_to be_valid
  end

  it 'is invalid with an improper destination cell' do
    subject.destination = 'a73'
    expect(subject).not_to be_valid
  end

  it 'is valid with a destination cell that is on the board' do
    subject.destination = 'a1'
    expect(subject).to be_valid
  end

  it 'is invalid without a game' do
    subject.game = nil
    expect(subject).not_to be_valid
  end

  it 'is invalid without a moving player' do
    subject.player = nil
    expect(subject).not_to be_valid
  end
end
