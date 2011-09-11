class Answer < ActiveRecord::Base
  validates_numericality_of :score, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 50

  belongs_to :question
  belongs_to :paper
  belongs_to :user

  delegate :key, :type_of_multiple_choice_question?, :type_of_true_false_question?, :to => :question
  delegate :score, :to => :question, :prefix => true

  def correct?
    content == key
  end

  def auto_calculate
    if type_of_multiple_choice_question? || type_of_true_false_question?
      update_attribute(:score, question_score) if correct?
    end
  end
end
