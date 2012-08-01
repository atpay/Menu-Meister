# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120801001639) do

  create_table "food_meals", :force => true do |t|
    t.integer  "food_id"
    t.integer  "meal_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "food_meals", ["food_id"], :name => "index_food_meals_on_food_id"
  add_index "food_meals", ["meal_id"], :name => "index_food_meals_on_meal_id"

  create_table "foods", :force => true do |t|
    t.string   "name"
    t.integer  "calories"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "foods", ["user_id"], :name => "index_foods_on_user_id"

  create_table "meals", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  add_index "meals", ["user_id"], :name => "index_meals_on_user_id"

  create_table "users", :force => true do |t|
    t.integer  "facebook_id"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "is_admin"
  end

end
