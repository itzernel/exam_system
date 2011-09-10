class Question < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true
  validates :key, :presence => true

  belongs_to :question_type
end
