class AddAcronymeToContrainte < ActiveRecord::Migration
  def self.up
    add_column :contraintes, :acronyme, :string
  end

  def self.down
    remove_column :contraintes, :acronyme
  end
end
