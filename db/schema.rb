ActiveRecord::Schema.define(version: 2020_01_29_015319) do

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "address"
    t.string "age"
    t.text "comment"
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
