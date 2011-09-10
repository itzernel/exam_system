FactoryGirl.define do
  factory :answer do
    content '30'
    association :question, :factory => :question 
  end
end
