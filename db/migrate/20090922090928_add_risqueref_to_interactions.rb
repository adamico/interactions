class AddRisquerefToInteractions < ActiveRecord::Migration
  def self.up
    change_table :interactions do |t|
      t.references :risque
    end
  end

  def self.down
    change_table :interactions do |t|
      t.remove_references :risque
    end
  end
end
