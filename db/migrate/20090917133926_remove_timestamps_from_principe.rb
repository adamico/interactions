class RemoveTimestampsFromPrincipe < ActiveRecord::Migration
  def self.up
    change_table :principes do |t|
      t.remove_timestamps
    end
  end

  def self.down
    change_table :principes do |t|
      t.timestamps
    end
  end
end
