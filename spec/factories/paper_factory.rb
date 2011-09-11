# encoding: UTF-8
FactoryGirl.define do
  factory :paper do
    title '2011～2012 期末考试'
    score 100
    after_create { |p| Factory(:question_type_with_questions, :paper => p) } 
  end
end
