class CreateContraintes < ActiveRecord::Migration
  def self.up
    create_table :contraintes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :contraintes
  end
end
