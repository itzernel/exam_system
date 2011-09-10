class Paper < ActiveRecord::Base
  validates :title, :presence => true

  has_many :questions
  has_many :question_types
  has_many :answers
end
