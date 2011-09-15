# encoding: UTF-8
class QuestionType < ActiveRecord::Base
  has_many :questions
  belongs_to :paper

  TYPES = [:multiple_choice, :true_false, :blank_filling, :short_answer, :calculation, :essey_writing]
  as_enum :type, TYPES 

  default_scope order('type_cd ASC')

  def type_enum
    [['选择题', 0], ['判断题', 1], ['填空题', 2], ['简答题', 3], ['计算题', 4], ['论述题', 5]]
  end
end
