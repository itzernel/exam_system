class AddScoreToPapers < ActiveRecord::Migration
  def self.up
    add_column :papers, :score, :integer
  end

  def self.down
    remove_column :papers, :score
  end
end
