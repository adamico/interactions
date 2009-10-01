class RemoveTimestampsFromContraintes < ActiveRecord::Migration
  def self.up
    change_table :contraintes do |t|
      t.remove_timestamps
    end
  end

  def self.down
    change_table :contraintes do |t|
      t.timestamps
    end
  end
end
