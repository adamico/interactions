class CreateRisques < ActiveRecord::Migration
  def self.up
    create_table :risques do |t|
      t.text :libelle
      t.references :interaction

      t.timestamps
    end
  end

  def self.down
    drop_table :risques
  end
end
