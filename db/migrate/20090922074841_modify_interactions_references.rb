class ModifyInteractionsReferences < ActiveRecord::Migration
  def self.up
    change_table :interactions do |t|
     t.remove_references(:principe) 
     t.remove_references(:inter_principe) 
     t.references(:classe)
     t.references(:inter_classe)
    end
  end

  def self.down
    change_table :interactions do |t|
     t.references(:principe) 
     t.references(:inter_principe) 
     t.remove_references(:classe)
     t.remove_references(:inter_classe)
    end
  end
end
