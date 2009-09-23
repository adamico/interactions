class RemoveCatFromInteractions < ActiveRecord::Migration
  def self.up
    change_table :interactions do |t|
      t.remove :cat
    end
  end

  def self.down
    change_table :interactions do |t|
      t.string :cat
    end
  end
end
