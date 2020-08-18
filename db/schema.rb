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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_29_052816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.integer "colleges_faculty_id"
    t.decimal "z_education_grade"
    t.decimal "z_cost_grade"
    t.decimal "z_staff_grade"
    t.decimal "z_facility_grade"
    t.decimal "z_international_grade"
    t.string "z_life_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "category_name", limit: 255
    t.text "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", force: :cascade do |t|
    t.string "college_name"
    t.string "college_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges_faculties", id: :serial, force: :cascade do |t|
    t.integer "college_id"
    t.integer "faculty_id"
  end

  create_table "elements_edus", force: :cascade do |t|
    t.integer "evaluate_edu_id"
    t.integer "faculty_student_n"
    t.integer "faculty_teacher_n"
    t.integer "apply_n"
    t.integer "admin_n"
    t.integer "entry_n"
    t.integer "college_delay_n"
    t.integer "college_student_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "evaluate_staff_id"
    t.integer "evaluate_life_id"
  end

  create_table "elements_lives", force: :cascade do |t|
    t.integer "evaluate_life_id"
    t.integer "the_region_student_n"
    t.integer "female_student_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements_staffs", force: :cascade do |t|
    t.integer "evaluate_staff_id"
    t.integer "teacher_expense"
    t.integer "staff_expense"
    t.integer "college_teacher_n"
    t.integer "college_staff_n"
    t.integer "faculty_foreign_teacher_n"
    t.integer "faculty_female_teacher_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_costs", force: :cascade do |t|
    t.integer "colleges_faculty_id"
    t.integer "tuition"
    t.integer "employment_rate"
    t.integer "scholarship"
    t.decimal "cost_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_edus", force: :cascade do |t|
    t.decimal "curriculum_points"
    t.decimal "relationwc"
    t.decimal "ratio_st"
    t.decimal "competition_rate"
    t.decimal "ratio_adm"
    t.decimal "susp_drop"
    t.decimal "income"
    t.decimal "qualification"
    t.decimal "study_budget"
    t.decimal "activity"
    t.decimal "education_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "colleges_faculty_id"
  end

  create_table "evaluate_facilities", force: :cascade do |t|
    t.integer "colleges_faculty_id"
    t.integer "facility_expenditure"
    t.integer "institution_expenditure"
    t.integer "own_books"
    t.decimal "facility_repu"
    t.decimal "facility_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_internationals", force: :cascade do |t|
    t.integer "colleges_faculty_id"
    t.integer "coop_schools"
    t.integer "shortstudy_programs"
    t.integer "faculty_partnerschool"
    t.integer "exchangestudents"
    t.integer "accepted_programs"
    t.decimal "the_assess"
    t.decimal "international_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_lives", force: :cascade do |t|
    t.integer "colleges_faculty_id"
    t.decimal "region_diversity"
    t.decimal "gender_diversity"
    t.integer "clubs"
    t.decimal "life_repu"
    t.decimal "life_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_reviews", force: :cascade do |t|
    t.integer "colleges_faculty_id"
    t.decimal "total_repu"
    t.decimal "review_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_staffs", force: :cascade do |t|
    t.integer "colleges_faculty_id"
    t.decimal "repu_teacher"
    t.decimal "salary_staff"
    t.decimal "outcome_staff"
    t.decimal "study_budget"
    t.decimal "teachers_diversity"
    t.decimal "teachers_gender"
    t.decimal "staff_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.text "faculty_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "colleges_faculty_id"
    t.integer "established_year"
    t.text "place"
    t.decimal "total_grade"
    t.decimal "center_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrape_facilities", force: :cascade do |t|
    t.integer "evaluate_facility_id"
    t.decimal "scrape_repu_facility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrape_lives", force: :cascade do |t|
    t.decimal "scrape_repu_life"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "evaluate_life_id"
  end

  create_table "scrape_reviews", id: :serial, force: :cascade do |t|
    t.integer "evaluate_review_id"
    t.decimal "scrape_repu_review"
  end

  create_table "scrape_staffs", id: :serial, force: :cascade do |t|
    t.integer "evaluate_staff_id"
    t.decimal "scrape_repu_teacher"
  end

  create_table "scrape_teacher_outcomes", id: :serial, force: :cascade do |t|
    t.integer "evaluate_staff_id"
    t.decimal "scrape_outcome_teacher"
  end

  create_table "scrape_thes", id: :serial, force: :cascade do |t|
    t.integer "evaluate_international_id"
    t.decimal "scrape_the"
  end

  add_foreign_key "colleges_faculties", "colleges", name: "colleges_faculties_college_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "colleges_faculties", "faculties", name: "colleges_faculties_faculty_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "elements_edus", "evaluate_edus", name: "elements_edus_evaluste_edu_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "elements_edus", "evaluate_lives", name: "elements_edus_evaluate_life_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "elements_edus", "evaluate_staffs", name: "elements_edus_evaluate_staff_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "elements_lives", "evaluate_lives", name: "elements_lives_evaluate_life_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "elements_staffs", "evaluate_staffs", name: "elements_staffs_evaluate_staff_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_facilities", "evaluate_facilities", name: "scrape_facilities_evaluate_facility_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_lives", "evaluate_lives", name: "scrape_lives_evaluate_life_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_reviews", "evaluate_reviews", name: "scrape_reviews_evaluate_review_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_staffs", "evaluate_staffs", name: "scrape_staffs_evaluate_staff_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_teacher_outcomes", "evaluate_staffs", name: "scrape_teacher_outcomes_evaluate_staff_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_thes", "evaluate_internationals", name: "scrape_thes_evaluate_international_id_fkey", on_update: :cascade, on_delete: :cascade
end
