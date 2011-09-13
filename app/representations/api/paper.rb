module Api::Paper
  extend ActiveSupport::Concern
  include do
    api_accessible :paper do |template|
      template.add :title
      template.add :score
      template.add :questions, :temlate => :public
    end

    api_accessible :paper_with_answers, :extend => :paper do |template|
      template.add :questions, :template => :private
    end
  end
end
