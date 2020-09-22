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

ActiveRecord::Schema.define(version: 2020_09_22_091800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
    t.decimal "z_education_grade"
    t.decimal "z_cost_grade"
    t.decimal "z_staff_grade"
    t.decimal "z_facility_grade"
    t.decimal "z_international_grade"
    t.string "z_life_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colleges_faculty_id"], name: "index_assessments_on_colleges_faculty_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.text "intro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string "college_name"
    t.string "college_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges_faculties", force: :cascade do |t|
    t.bigint "college_id"
    t.bigint "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_colleges_faculties_on_college_id"
    t.index ["faculty_id"], name: "index_colleges_faculties_on_faculty_id"
  end

  create_table "elements_edus", force: :cascade do |t|
    t.bigint "evaluate_edu_id"
    t.bigint "evaluate_staff_id"
    t.bigint "evaluate_life_id"
    t.integer "faculty_student_n"
    t.integer "faculty_teacher_n"
    t.integer "apply_n"
    t.integer "admin_n"
    t.integer "entry_n"
    t.integer "college_delay_n"
    t.integer "college_student_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluate_edu_id"], name: "index_elements_edus_on_evaluate_edu_id"
    t.index ["evaluate_life_id"], name: "index_elements_edus_on_evaluate_life_id"
    t.index ["evaluate_staff_id"], name: "index_elements_edus_on_evaluate_staff_id"
  end

  create_table "elements_lives", force: :cascade do |t|
    t.bigint "evaluate_life_id"
    t.integer "the_region_student_n"
    t.integer "female_student_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluate_life_id"], name: "index_elements_lives_on_evaluate_life_id"
  end

  create_table "elements_staffs", force: :cascade do |t|
    t.bigint "evaluate_staff_id"
    t.integer "teacher_expense"
    t.integer "staff_expense"
    t.integer "college_teacher_n"
    t.integer "college_staff_n"
    t.integer "faculty_foreign_teacher_n"
    t.integer "faculty_female_teacher_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluate_staff_id"], name: "index_elements_staffs_on_evaluate_staff_id"
  end

  create_table "evaluate_costs", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
    t.integer "tuition"
    t.integer "employment_rate"
    t.integer "scholarship"
    t.decimal "cost_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colleges_faculty_id"], name: "index_evaluate_costs_on_colleges_faculty_id"
  end

  create_table "evaluate_edus", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
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
    t.index ["colleges_faculty_id"], name: "index_evaluate_edus_on_colleges_faculty_id"
  end

  create_table "evaluate_facilities", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
    t.integer "facility_expenditure"
    t.integer "institution_expenditure"
    t.integer "own_books"
    t.decimal "facility_repu"
    t.decimal "facility_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colleges_faculty_id"], name: "index_evaluate_facilities_on_colleges_faculty_id"
  end

  create_table "evaluate_internationals", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
    t.integer "coop_schools"
    t.integer "shortstudy_programs"
    t.integer "faculty_partnerschool"
    t.integer "exchangestudents"
    t.integer "accepted_programs"
    t.decimal "the_assess"
    t.decimal "international_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colleges_faculty_id"], name: "index_evaluate_internationals_on_colleges_faculty_id"
  end

  create_table "evaluate_lives", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
    t.decimal "region_diversity"
    t.decimal "gender_diversity"
    t.integer "clubs"
    t.decimal "life_repu"
    t.decimal "life_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colleges_faculty_id"], name: "index_evaluate_lives_on_colleges_faculty_id"
  end

  create_table "evaluate_reviews", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
    t.decimal "total_repu"
    t.decimal "review_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colleges_faculty_id"], name: "index_evaluate_reviews_on_colleges_faculty_id"
  end

  create_table "evaluate_staffs", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
    t.decimal "salary_staff"
    t.decimal "outcome_staff"
    t.decimal "study_budget"
    t.decimal "teachers_diversity"
    t.decimal "teachers_gender"
    t.decimal "staff_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colleges_faculty_id"], name: "index_evaluate_staffs_on_colleges_faculty_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.text "faculty_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.bigint "colleges_faculty_id"
    t.integer "established_year"
    t.text "place"
    t.decimal "total_grade"
    t.decimal "center_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colleges_faculty_id"], name: "index_rankings_on_colleges_faculty_id"
  end

  create_table "scrape_facilities", force: :cascade do |t|
    t.bigint "evaluate_facility_id"
    t.decimal "scrape_repu_facility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluate_facility_id"], name: "index_scrape_facilities_on_evaluate_facility_id"
  end

  create_table "scrape_lives", force: :cascade do |t|
    t.bigint "evaluate_life_id"
    t.decimal "scrape_repu_life"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluate_life_id"], name: "index_scrape_lives_on_evaluate_life_id"
  end

  create_table "scrape_reviews", force: :cascade do |t|
    t.bigint "evaluate_review_id"
    t.decimal "scrape_repu_review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluate_review_id"], name: "index_scrape_reviews_on_evaluate_review_id"
  end

  create_table "scrape_staffs", force: :cascade do |t|
    t.bigint "staff_each_id"
    t.decimal "rm_awards"
    t.decimal "rm_papers"
    t.decimal "rm_misc"
    t.decimal "rm_books"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_each_id"], name: "index_scrape_staffs_on_staff_each_id"
  end

  create_table "scrape_thes", force: :cascade do |t|
    t.bigint "evaluate_international_id"
    t.decimal "scrape_the"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluate_international_id"], name: "index_scrape_thes_on_evaluate_international_id"
  end

  create_table "staff_eaches", force: :cascade do |t|
    t.bigint "evaluate_staff_id"
    t.text "staff_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "rm_points"
    t.index ["evaluate_staff_id"], name: "index_staff_eaches_on_evaluate_staff_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assessments", "colleges_faculties"
  add_foreign_key "colleges_faculties", "faculties"
  add_foreign_key "elements_edus", "evaluate_edus"
  add_foreign_key "elements_edus", "evaluate_lives"
  add_foreign_key "elements_edus", "evaluate_staffs"
  add_foreign_key "elements_lives", "evaluate_lives"
  add_foreign_key "elements_staffs", "evaluate_staffs"
  add_foreign_key "evaluate_costs", "colleges_faculties"
  add_foreign_key "evaluate_edus", "colleges_faculties"
  add_foreign_key "evaluate_facilities", "colleges_faculties"
  add_foreign_key "evaluate_internationals", "colleges_faculties"
  add_foreign_key "evaluate_lives", "colleges_faculties"
  add_foreign_key "evaluate_reviews", "colleges_faculties"
  add_foreign_key "evaluate_staffs", "colleges_faculties"
  add_foreign_key "rankings", "colleges_faculties"
  add_foreign_key "scrape_facilities", "evaluate_facilities"
  add_foreign_key "scrape_lives", "evaluate_lives"
  add_foreign_key "scrape_reviews", "evaluate_reviews"
  add_foreign_key "scrape_staffs", "staff_eaches"
  add_foreign_key "scrape_thes", "evaluate_internationals"
  add_foreign_key "staff_eaches", "evaluate_staffs"
end
