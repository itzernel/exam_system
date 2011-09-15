module Api::Question
  extend ActiveSupport::Concern
  included do
    api_accessible :public do |template|
      template.add :id
      template.add :title
      template.add :score
      template.add lambda { |question| question.question_type.type }, :as => :question_type 
    end

    api_accessible :private, :extend => :public do |template|
      template.add :key
    end
  end
end
