class Question < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true
  validates :key, :presence => true

  has_many :answers
  belongs_to :question_type
end
