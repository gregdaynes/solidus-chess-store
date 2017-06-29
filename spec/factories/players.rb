FactoryGirl.define do
  factory :player do
    sequence(:username) { |increment| "#{increment}" }
  end
end
