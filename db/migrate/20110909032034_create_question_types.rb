class CreateQuestionTypes < ActiveRecord::Migration
  def self.up
    create_table :question_types do |t|
      t.integer :type_cd

      t.timestamps
    end
  end

  def self.down
    drop_table :question_types
  end
end
