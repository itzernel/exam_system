class Answer < ActiveRecord::Base
  validates_numericality_of :score, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 50

  belongs_to :question
  belongs_to :paper
  belongs_to :user
end
