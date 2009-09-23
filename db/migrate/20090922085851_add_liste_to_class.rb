class AddListeToClass < ActiveRecord::Migration
  def self.up
    change_table :classes do |t|
      t.text :liste_principes, :default => nil
    end
  end

  def self.down
    change_table :classes do |t|
      t.remove :liste_principes
    end
  end
end
