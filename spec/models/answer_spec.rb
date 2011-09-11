require 'spec_helper'

describe Answer do
  it { should validate_numericality_of :score }
  it { should_not allow_value(-1).for :score }
  it { should_not allow_value(51).for :score }
  it { should belong_to :question }
  it { should belong_to :paper }
  it { should belong_to :user }

  context 'correctness and scores' do
    let(:paper) { Factory(:paper_with_question_types) }
    let(:student) { Factory(:student) }
    let(:right_answer) { Factory(:answer, :paper => paper, :user => student) }
    let(:wrong_answer) { Factory(:answer, :content => '50', :paper => paper, :user => student) }

    describe '#correct?' do
      it 'returns true if answer is correct' do
        right_answer.should_receive(:content).and_return('20')
        right_answer.correct?.should be_true
      end
      it 'return false if answer is wrong' do
        wrong_answer.should_receive(:content).and_return('50')
        wrong_answer.correct?.should be_false
      end
    end

    describe '#auto_calculate' do
      it "auto calculates score of answer if it's question is type of multiple-choice or true-false question" do
        right_answer.should_receive(:correct?).and_return(true)
        right_answer.auto_calculate
        right_answer.score.should == right_answer.question.score 
      end
    end
  end

end
