# encoding: UTF-8
FactoryGirl.define do
  factory :question_type do
    type_cd 0    # 选择题
  end

  factory :question_type_with_questions, :parent => :question_type do
    type_cd 1    #填空题
    after_create{ |qt| qt.questions << Factory(:question, :title => '你是____', :question_type => qt) }
  end
end
