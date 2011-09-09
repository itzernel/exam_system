# encoding: UTF-8
require 'spec_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :role }
  it { Factory(:teacher)
    should validate_uniqueness_of :email
  }

  describe '#role?' do
    before(:each) do
      @student = Factory(:student)
    end
    it "returns true if a user's role is equal to the given role" do
      @student.role?('student').should be_true
    end
    it "returns false if a user's role is not equal to the given role" do
      @student.role?('teacher').should be_false
    end
  end
end
