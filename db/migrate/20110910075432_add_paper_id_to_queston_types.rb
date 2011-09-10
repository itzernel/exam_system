class AddPaperIdToQuestonTypes < ActiveRecord::Migration
  def self.up
    add_column :question_types, :paper_id, :integer
  end

  def self.down
    remove_column :question_types, :paper_id
  end
end
