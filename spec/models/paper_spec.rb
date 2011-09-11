require 'spec_helper'

describe Paper do
  it { should validate_presence_of :title }
  it { should validate_numericality_of :score }
  it { should_not allow_value(-1).for :score }
  it { should_not allow_value(101).for :score }
  it { should have_many :questions }
  it { should have_many :question_types }
  it { should have_many :answers }
end
