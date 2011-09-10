# encoding: UTF-8
FactoryGirl.define do
  factory :question_type do
    name '选择题'
  end

  factory :question_type_with_questions, :parent => :question_type do
   after_create{ |qt| 5.times { Factory(:question, :question_type => qt) } }
  end
end
