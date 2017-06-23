require 'rails_helper'

describe Player, type: :model do
  subject { create(:player) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end
end
