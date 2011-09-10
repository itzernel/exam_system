class AddPaperIdToAnswers < ActiveRecord::Migration
  def self.up
    add_column :answers, :paper_id, :integer, :null => false
  end

  def self.down
    remove_column :answers, :paper_id
  end
end
