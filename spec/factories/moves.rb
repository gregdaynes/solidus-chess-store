FactoryGirl.define do
  factory :move do
    source 'e2'
    destination 'e4'
    move_number 1
    player { player }
    game { game }
  end
end
