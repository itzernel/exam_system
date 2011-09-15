require 'spec_helper'

describe QuestionType do
  it { should have_many :questions }
  it { should belong_to :paper }

  describe '.default_scope' do
    before do
      TYPES = [:multiple_choice, :true_false, :blank_filling, :short_answer, :calculation, :essey_writing]
      @question_type1 = Factory(:question_type, :type_cd => TYPES.index(:essey_writing))
      @question_type2 = Factory(:question_type, :type_cd => TYPES.index(:calculation))
      @question_type3 = Factory(:question_type, :type_cd => TYPES.index(:blank_filling))
      @question_type4 = Factory(:question_type, :type_cd => TYPES.index(:multiple_choice))

    end
    it 'returns question_types in the right order' do

      QuestionType.all.should == [@question_type4, @question_type3, @question_type2, @question_type1]
    end
  end
end
