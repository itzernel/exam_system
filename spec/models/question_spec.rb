# encoding: UTF-8
require 'spec_helper'

describe Question do
  it { should validate_presence_of :title }
  it { should validate_presence_of :key }
  it { should validate_presence_of :score }
  it { should validate_numericality_of :score }
  it { should_not allow_value(0).for :score }
  it { should_not allow_value(51).for :score }
  it { Factory(:question)
    should validate_uniqueness_of :title
  }
  it { should belong_to :question_type }
  it { should belong_to :paper }
  it { should have_many :answers }
  
  context 'question type' do
    before(:each) do
      @multiple_choice_question = FactoryGirl.build(:question)
      true_false = Factory(:question_type, :name => '判断题')
      @true_false_question = FactoryGirl.build(:question, :question_type => true_false)
    end

    describe '#type_of_multiple_choice_question?' do
      it 'returns true if a question is type of multiple-choice question' do
        @multiple_choice_question.type_of_multiple_choice_question?.should be_true
      end
      it 'returns false if a question is not type fo multiple-choice question' do
        @true_false_question.type_of_multiple_choice_question?.should be_false
      end
    end

    describe '#type_of_true_false_question?' do
      it 'returns ture if a question is type of true_false question' do
        @true_false_question.type_of_true_false_question?.should be_true
      end
      it 'returns false if a question is not  type of true_false question' do
        @multiple_choice_question.type_of_true_false_question?.should be_false
      end
    end
  end
end
