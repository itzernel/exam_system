require 'spec_helper'

describe PapersController do
  describe "GET 'index'" do
    before do
      sign_in Factory(:student)
    end

    let(:papers) { [Factory(:paper_with_questions_and_question_types)] }
    
    it "returns all papers with right format" do
      Paper.should_receive(:all).and_return(papers)

      get 'index'

      actual = Yajl::Parser.new.parse response.body
      expected_json = <<-PAPERS
      {
       "papers":[{
         "title": "#{papers.first.title}",
         "score": #{papers.first.score} 
        }]
      }
      PAPERS

      expected = Yajl::Parser.new.parse expected_json
      actual.should == expected
      
    end
  end

end
