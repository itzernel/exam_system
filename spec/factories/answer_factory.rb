FactoryGirl.define do
  factory :answer do |a|
    a.content '30'
    a.question { Qustion.first || Factory(:question) }
  end
end
