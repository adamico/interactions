class RemoveInteractionrefFromRisque < ActiveRecord::Migration
  def self.up
    change_table :risques do |t|
      t.remove_references :interaction
    end
  end

  def self.down
    change_table :risques do |t|
      t.references :interaction
    end
  end
end
