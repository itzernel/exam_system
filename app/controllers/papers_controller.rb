class PapersController < ApplicationController
  def index
    @papers = Paper.all
    respond_to do |format|
      format.html
      format.json { render_for_api :paper, :json => @papers, :status => :ok, :root => :papers }
    end
  end

  def show
    @paper = Paper.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render_for_api :paper_with_questions, :json => @paper, :status => :ok }
    end
  end
end
