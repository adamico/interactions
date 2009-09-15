class CreateInteractions < ActiveRecord::Migration
  def self.up
    create_table :interactions do |t|
      t.string :cat
      t.references :principe
      t.references :contrainte

      t.timestamps
    end
  end

  def self.down
    drop_table :interactions
  end
end
