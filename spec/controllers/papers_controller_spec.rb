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
         "id": #{papers.first.id},
         "title": "#{papers.first.title}",
         "score": #{papers.first.score} 
        }]
      }
      PAPERS
      expected = Yajl::Parser.new.parse expected_json
      actual.should == expected
    end
  end

  describe "GET 'show'" do
    before do
      sign_in Factory(:student) 
    end
    let(:paper) { Factory(:paper_with_questions_and_question_types) }

    it 'returns the exec paper with right format when given an id' do
      Paper.should_receive(:find).with(paper.id).and_return(paper)

      get 'show', :id => paper.id
      actual = Yajl::Parser.new.parse response.body
      expected_json = <<-PAPER
      {
       "paper":{
         "id": #{paper.id},
         "title": "#{paper.title}",
         "score": #{paper.score},
         "questions":[{
           "id": #{paper.questions.first.id},
           "title": "#{paper.questions.first.title}",
           "score": #{paper.questions.first.score},
           "question_type": "#{paper.questions.first.question_type.name}"
          }] 
        }
      }
      PAPER
      expected = Yajl::Parser.new.parse expected_json
      actual.should == expected
    end
  end
end
