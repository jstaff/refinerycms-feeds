
FactoryGirl.define do
  factory :feed, :class => Refinery::Feeds::Feed do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

