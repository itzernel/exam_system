class Paper < ActiveRecord::Base
  validates :title, :presence => true
  validates_numericality_of :score, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100

  has_many :questions
  has_many :question_types
  has_many :answers
end
