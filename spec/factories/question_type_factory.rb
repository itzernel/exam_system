# encoding: UTF-8
FactoryGirl.define do
  factory :question_type do
    name '选择题'
  end

  factory :question_type_with_questions, :parent => :question_type do
    name '填空题'
    after_create{ |qt| Factory(:question, :title => '你是____', :question_type => qt) }
  end
end
