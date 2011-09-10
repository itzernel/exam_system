require 'spec_helper'

describe QuestionType do
  it { should validate_presence_of :name }
  it {
    Factory(:question_type)
    should validate_presence_of :name
  }
  it { should have_many :questions }
  it { should belong_to :paper }

end
