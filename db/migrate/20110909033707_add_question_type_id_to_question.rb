class AddQuestionTypeIdToQuestion < ActiveRecord::Migration
  def self.up
    add_column :questions, :question_type_id, :integer, :null => false
  end

  def self.down
    remove_column :questions, :question_type_id
  end
end
