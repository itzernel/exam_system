class PapersController < ApplicationController
  def index
    papers = Paper.all
    render_for_api :paper, :json => papers, :status => :ok, :root => :papers
  end
end
