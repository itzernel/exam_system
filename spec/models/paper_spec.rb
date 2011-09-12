require 'spec_helper'

describe Paper do
  it { should validate_presence_of :title }
  it { should validate_numericality_of :score }
  it { should_not allow_value(-1).for :score }
  it { should_not allow_value(101).for :score }
  it { should have_many :questions }
  it { should have_many :question_types }
  it { should have_many :answers }

  context 'setting score' do
    let(:paper) { FactoryGirl.build(:paper) }
    let(:question) { Factory(:question) }
    before(:each) { paper.questions << question }

    describe '#calculate_score' do
      it "calculates the score of a paper by adding up the paper's questions' scores" do
        paper.calculate_score.should == 2
      end
    end

    describe '#set_score' do
      it 'sets score by calling calculate_score' do
        paper.set_score
        paper.score.should == 2
      end
    end
  end
end
