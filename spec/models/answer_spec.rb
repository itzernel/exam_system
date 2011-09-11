require 'spec_helper'

describe Answer do
  it { should validate_numericality_of :score }
  it { should_not allow_value(-1).for :score }
  it { should_not allow_value(51).for :score }
  it { should belong_to :question }
  it { should belong_to :paper }
  it { should belong_to :user }

  describe '#auto_calculate' do
    it "auto calculates score of answer if it's question is type of multiple-choice or true-false question" do
      
    end
  end
end
