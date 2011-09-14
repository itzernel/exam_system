module Api::Paper
  extend ActiveSupport::Concern
  included do
    api_accessible :paper do |template|
      template.add :id
      template.add :title
      template.add :score
    end

    api_accessible :paper_with_questions, :extend => :paper do |template|
      template.add :questions, :template => :public
    end
    api_accessible :paper_with_questions_and_answers, :extend => :paper_with_questions do |template|
      template.add :questions, :template => :private
    end
  end
end
