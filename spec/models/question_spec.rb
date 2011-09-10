require 'spec_helper'

describe Question do
  it { should validate_presence_of :title }
  it { should validate_presence_of :key }
  it { Factory(:question)
    should validate_uniqueness_of :title
  }
  it { should belong_to :question_type }
  it { should belong_to :paper }
  it { should have_many :answers }
end
