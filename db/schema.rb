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

ActiveRecord::Schema.define(version: 2019_04_19_032706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admissions", force: :cascade do |t|
    t.datetime "moment"
    t.bigint "diagnosis_id"
    t.bigint "symptom_id"
    t.bigint "observation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diagnosis_id"], name: "index_admissions_on_diagnosis_id"
    t.index ["observation_id"], name: "index_admissions_on_observation_id"
    t.index ["symptom_id"], name: "index_admissions_on_symptom_id"
  end

  create_table "admissions_diagnoses", force: :cascade do |t|
    t.bigint "admission_id", null: false
    t.bigint "diagnosis_id", null: false
    t.index ["admission_id"], name: "index_admissions_diagnoses_on_admission_id"
    t.index ["diagnosis_id"], name: "index_admissions_diagnoses_on_diagnosis_id"
  end

  create_table "admissions_observations", force: :cascade do |t|
    t.bigint "admission_id", null: false
    t.bigint "observation_id", null: false
    t.index ["admission_id"], name: "index_admissions_observations_on_admission_id"
    t.index ["observation_id"], name: "index_admissions_observations_on_observation_id"
  end

  create_table "admissions_symptoms", force: :cascade do |t|
    t.bigint "admission_id", null: false
    t.bigint "symptom_id", null: false
    t.index ["admission_id"], name: "index_admissions_symptoms_on_admission_id"
    t.index ["symptom_id"], name: "index_admissions_symptoms_on_symptom_id"
  end

  create_table "allergies", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "code"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnostic_procedures", force: :cascade do |t|
    t.text "description"
    t.datetime "moment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "sex", default: "other", null: false
  end

  create_table "medication_orders", force: :cascade do |t|
    t.string "name"
    t.string "unit", default: "mg"
    t.string "dosage"
    t.string "frequency", default: "often"
    t.string "route", default: "PO"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observations", force: :cascade do |t|
    t.text "description"
    t.datetime "moment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "mr"
    t.datetime "dob"
    t.bigint "gender_id"
    t.bigint "admission_id"
    t.bigint "medication_order_id"
    t.bigint "diagnostic_procedure_id"
    t.bigint "treatments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admission_id"], name: "index_patients_on_admission_id"
    t.index ["diagnostic_procedure_id"], name: "index_patients_on_diagnostic_procedure_id"
    t.index ["gender_id"], name: "index_patients_on_gender_id"
    t.index ["medication_order_id"], name: "index_patients_on_medication_order_id"
    t.index ["treatments_id"], name: "index_patients_on_treatments_id"
  end

  create_table "patients_allergies", force: :cascade do |t|
    t.bigint "allergy_id", null: false
    t.bigint "patient_id", null: false
    t.index ["allergy_id"], name: "index_patients_allergies_on_allergy_id"
    t.index ["patient_id"], name: "index_patients_allergies_on_patient_id"
  end

  create_table "patients_diagnoses", force: :cascade do |t|
    t.bigint "diagnosis_id", null: false
    t.bigint "patient_id", null: false
    t.index ["diagnosis_id"], name: "index_patients_diagnoses_on_diagnosis_id"
    t.index ["patient_id"], name: "index_patients_diagnoses_on_patient_id"
  end

  create_table "patients_diagnostic_procs", force: :cascade do |t|
    t.bigint "diagnostic_procedure_id", null: false
    t.bigint "patient_id", null: false
    t.index ["diagnostic_procedure_id"], name: "index_patients_diagnostic_procs_on_diagnostic_procedure_id"
    t.index ["patient_id"], name: "index_patients_diagnostic_procs_on_patient_id"
  end

  create_table "patients_medication_orders", force: :cascade do |t|
    t.bigint "medication_order_id", null: false
    t.bigint "patient_id", null: false
    t.index ["medication_order_id"], name: "index_patients_medication_orders_on_medication_order_id"
    t.index ["patient_id"], name: "index_patients_medication_orders_on_patient_id"
  end

  create_table "patients_treatments", force: :cascade do |t|
    t.bigint "treatment_id", null: false
    t.bigint "patient_id", null: false
    t.index ["patient_id"], name: "index_patients_treatments_on_patient_id"
    t.index ["treatment_id"], name: "index_patients_treatments_on_treatment_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.text "description"
    t.text "necessity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
