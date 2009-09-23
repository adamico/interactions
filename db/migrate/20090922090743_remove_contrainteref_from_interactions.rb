class RemoveContrainterefFromInteractions < ActiveRecord::Migration
  def self.up
    change_table :interactions do |t|
      t.remove_references :contrainte
    end
  end

  def self.down
    change_table :interactions do |t|
      t.references :contrainte
    end
  end
end
