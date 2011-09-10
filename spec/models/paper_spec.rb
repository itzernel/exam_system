require 'spec_helper'

describe Paper do
  it { should validate_presence_of :title }
  it { should have_many :questions }
  it { should have_many :question_types }
  it { should have_many :answers }
end
