require 'rails_helper'

describe Player, type: :model do
  subject { create(:player) }

  it { is_expected.to be_valid }
end
