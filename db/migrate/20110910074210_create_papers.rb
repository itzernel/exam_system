class CreatePapers < ActiveRecord::Migration
  def self.up
    create_table :papers do |t|
      t.string :title, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :papers
  end
end
