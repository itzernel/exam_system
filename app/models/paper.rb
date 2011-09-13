class Paper < ActiveRecord::Base
  after_create :set_score

  validates :title, :presence => true
  validates_numericality_of :score, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100

  has_many :questions
  has_many :question_types
  has_many :answers

  def calculate_score
    questions.inject(0) { |sum, question| sum += question.score }
  end

  def set_score
    update_attributes(:score => calculate_score)
  end
end
