# encoding: UTF-8
FactoryGirl.define do
  factory :question_type do
    name '选择题'
  end

  factory :question_type_with_questions, :parent => :question_type do |qt|
    qt.after_create{ |q_type| q_type.questions << (Question.first || Factory(:question)) }
  end
end
