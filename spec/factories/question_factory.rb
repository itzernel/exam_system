# encoding: UTF-8
FactoryGirl.define do
  factory :question do |q|
    q.title "请问你几岁？"
    q.key '20'
    q.question_type {QuestionType.first || Factory(:question_type)}
  end
end
