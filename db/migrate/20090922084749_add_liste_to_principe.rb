class AddListeToPrincipe < ActiveRecord::Migration
  def self.up
    change_table :principes do |t|
      t.text :liste_classes, :default => nil
    end
  end

  def self.down
    change_table :principes do |t|
      t.remove :liste_classes
    end
  end
end
