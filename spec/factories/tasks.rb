FactoryGirl.define do
  factory :task do
    name FFaker::Lorem.phrase
    status
    project
  end
end
