module Api::Question
  extend ActiveSupport::Concern
  include do
    api_accessible :public do |template|
      template.add :title
      template.add :score
      template.add lambda { |question| question.question_type.name }, :as => :question_type 
    end

    api_accessible :private, :extend => :public do |template|
      template.add :key
    end
  end
end
