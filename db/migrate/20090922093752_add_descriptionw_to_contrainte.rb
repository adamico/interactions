class AddDescriptionwToContrainte < ActiveRecord::Migration
  def self.up
    add_column :contraintes, :description, :text
  end

  def self.down
    remove_column :contraintes, :description
  end
end
