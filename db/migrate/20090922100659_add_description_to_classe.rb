class AddDescriptionToClasse < ActiveRecord::Migration
  def self.up
    add_column :classes, :description, :string
  end

  def self.down
    remove_column :classes, :description
  end
end
