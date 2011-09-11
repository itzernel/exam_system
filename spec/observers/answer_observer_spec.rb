# encoding: UTF-8
require 'spec_helper'

describe AnswerObserver do
  describe '#after_create' do
    let(:paper) { Factory(:paper) }
    let(:student) { Factory(:student) }
    let(:right_answer) { FactoryGirl.create(:answer, :content => '20', :paper => paper, :user => student) }
    
    it 'calls auto_calculate before an answer is saved' do
      right_answer.score.should == 2
    end
  end
end
