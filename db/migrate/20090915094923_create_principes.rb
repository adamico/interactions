class CreatePrincipes < ActiveRecord::Migration
  def self.up
    create_table :principes do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :principes
  end
end
