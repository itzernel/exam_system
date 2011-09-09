class QuestionType < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :questions
end
