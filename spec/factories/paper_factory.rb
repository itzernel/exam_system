# encoding: UTF-8
FactoryGirl.define do
  factory :paper do |paper|
    paper.title '2011～2012 期末考试'
    paper.after_create { |p| p.queston_types << Factory(:question_type_with_questions) } 
    paper.after_create { |p| p.answers << Factory(:answer) }
  end
end
