ActiveRecord::Schema.define(version: 2020_01_29_021036) do

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
    t.string "line", null: false
    t.string "name", null: false
    t.integer "take_minutes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "house_id"
    t.index ["house_id"], name: "index_stations_on_house_id"
  end

end
