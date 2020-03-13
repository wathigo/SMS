# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_13_153419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.date "arrival"
    t.date "departure"
    t.bigint "unit_id"
    t.bigint "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_attendances_on_student_id"
    t.index ["unit_id"], name: "index_attendances_on_unit_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fees", force: :cascade do |t|
    t.integer "total_amount"
    t.integer "amount_paid"
    t.integer "amount_remaining"
    t.bigint "student_id"
    t.bigint "semister_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["semister_id"], name: "index_fees_on_semister_id"
    t.index ["student_id"], name: "index_fees_on_student_id"
  end

  create_table "semisters", force: :cascade do |t|
    t.date "start"
    t.date "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "surname"
    t.bigint "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_students_on_course_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.bigint "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_units_on_course_id"
  end

  add_foreign_key "attendances", "students"
  add_foreign_key "attendances", "units"
  add_foreign_key "fees", "semisters"
  add_foreign_key "fees", "students"
  add_foreign_key "students", "courses"
  add_foreign_key "units", "courses"
end
