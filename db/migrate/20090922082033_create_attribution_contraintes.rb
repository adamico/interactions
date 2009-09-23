class CreateAttributionContraintes < ActiveRecord::Migration
  def self.up
    create_table :attribution_contraintes do |t|
      t.text :cat
      t.references :contrainte
      t.references :interaction

      t.timestamps
    end
  end

  def self.down
    drop_table :attribution_contraintes
  end
end
