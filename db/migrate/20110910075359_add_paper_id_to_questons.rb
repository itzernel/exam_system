class AddPaperIdToQuestons < ActiveRecord::Migration
  def self.up
    add_column :questions, :paper_id, :integer
  end

  def self.down
    remove_column :questions, :paper_id
  end
end
