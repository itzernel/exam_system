# encoding: UTF-8
class Question < ActiveRecord::Base
  acts_as_api
  include Api::Question

  validates :title, :presence => true, :uniqueness => true
  validates :key, :score, :presence => true
  validates_numericality_of :score, :greater_than => 0, :less_than_or_equal_to => 50

  has_many :answers
  belongs_to :question_type
  belongs_to :paper

  delegate :type, :to => :question_type

  scope :in_a_paper, lambda { |paper| where(:paper_id => paper) }
  scope :same_type, lambda { |type| where(:question_type_id => type) }

  def type_of_multiple_choice_question?
    type  == :multiple_choice
  end

  def type_of_true_false_question?
    type  == :true_false
  end
end
