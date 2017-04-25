FactoryGirl.define do
  factory :project do
    name FFaker::Company.name
  end
end
