class CreateCompositions < ActiveRecord::Migration
  def self.up
    create_table :principes_specialites, :id => false do |t|
      t.references :principe
      t.references :specialite
    end
  end

  def self.down
    drop_table :principes_specialites
  end
end
