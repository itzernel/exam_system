# encoding: UTF-8
FactoryGirl.define do
  factory :paper do
    title '2011～2012 期末考试'
    after_create { |p| p.queston_types << Factory(:question_type_with_questions) } 
    after_create { |p| p.answers << Factory(:answer) }
  end
end
