ActiveRecord::Schema.define(version: 2020_01_29_015731) do

  create_table "houses", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.string "address", null: false
    t.integer "age", null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "line"
    t.string "name"
    t.integer "take_minutes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
