class CreateClassesPrincipes < ActiveRecord::Migration
  def self.up
    create_table :classes_principes, :id => false do |t|
      t.references :classe
      t.references :principe
    end
  end

  def self.down
    drop_table :classes_principes
  end
end
