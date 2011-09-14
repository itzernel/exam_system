class PapersController < ApplicationController
  def index
    papers = Paper.all
    render_for_api :paper, :json => papers, :status => :ok, :root => :papers
  end

  def show
    paper = Paper.find(params[:id])
    render_for_api :paper_with_questions, :json => paper, :status => :ok
  end
end
