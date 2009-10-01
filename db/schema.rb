# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090929155842) do

  create_table "attribution_contraintes", :force => true do |t|
    t.text     "cat"
    t.integer  "contrainte_id"
    t.integer  "interaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "liste_principes"
    t.string   "description"
  end

  create_table "classes_principes", :id => false, :force => true do |t|
    t.integer "classe_id"
    t.integer "principe_id"
  end

  create_table "contraintes", :force => true do |t|
    t.string "name"
    t.string "acronyme"
    t.text   "description"
  end

  create_table "interactions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "classe_id"
    t.integer  "inter_classe_id"
    t.integer  "risque_id"
  end

  create_table "principes", :force => true do |t|
    t.string "name"
    t.text   "liste_classes"
  end

  create_table "principes_specialites", :id => false, :force => true do |t|
    t.integer "principe_id"
    t.integer "specialite_id"
  end

  create_table "risques", :force => true do |t|
    t.text     "libelle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialites", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
