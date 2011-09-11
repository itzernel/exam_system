# encoding: UTF-8
FactoryGirl.define do
  factory :paper do
    title '2011～2012 期末考试'
    score 100

    factory :paper_with_question_types do
      after_create { |p| Factory(:question_type_with_questions, :paper => p) } 
    end
  end
end
