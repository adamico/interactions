class ModifyInteractions < ActiveRecord::Migration
  def self.up
    change_table :interactions do |t|
      t.integer :inter_principe_id
    end
  end

  def self.down
    change_table :interactions do |t|
     t.remove(:inter_principe_id) 
    end
  end
end
