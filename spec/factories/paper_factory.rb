# encoding: UTF-8
FactoryGirl.define do
  factory :paper do
    title '2011～2012 期末考试'
    score 100

    factory :paper_with_question_types do
      after_create { |p| p.question_types <<  Factory(:question_type_with_questions, :paper => p) } 

      factory :paper_with_questions_and_question_types do
        after_create { |p| p.questions <<  Factory(:question, :paper => p) }
      end
    end
  end
end
