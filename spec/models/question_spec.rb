require 'spec_helper'

describe Question do
  it { should validate_presence_of :title }
  it { Factory(:question)
    should validate_uniqueness_of :title
  }
  it { should belong_to :question_type }
end