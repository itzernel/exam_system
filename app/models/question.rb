# encoding: UTF-8
class Question < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true
  validates :key, :presence => true
  validates :score, :presence => true
  validates_numericality_of :score, :greater_than => 0, :less_than_or_equal_to => 50

  has_many :answers
  belongs_to :question_type
  belongs_to :paper

  delegate :name, :to => :question_type, :prefix => true

  def type_of_multiple_choice_question?
    question_type_name == '选择题'
  end

  def type_of_true_false_question?
    question_type_name == '判断题'
  end
end
