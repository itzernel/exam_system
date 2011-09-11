class AnswerObserver < ActiveRecord::Observer
  def after_create(answer)
    answer.auto_calculate
  end  
end
