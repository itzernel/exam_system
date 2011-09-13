# encoding: UTF-8
FactoryGirl.define do
  factory :question do
    title "请问你几岁？"
    key '20'
    score 2
    question_type { QuestionType.last || Factory(:question_type) }
  end
end
