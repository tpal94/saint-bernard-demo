class CreateAdmissions < ActiveRecord::Migration[5.2]
  def up
    create_table :admissions do |t|
      t.datetime :moment
      t.references :diagnosis
      t.references :symptom
      t.references :observation
      t.timestamps
    end

    create_table :admissions_diagnoses do |t|
      t.references :admission, null: false
      t.references :diagnosis, null: false
    end

    create_table :admissions_symptoms do |t|
      t.references :admission, null: false
      t.references :symptom, null: false
    end

    create_table :admissions_observations do |t|
      t.references :admission, null: false
      t.references :observation, null: false
    end
  end

  def down
    drop_table :admissions
    drop_table :admissions_diagnoses
    drop_table :admissions_symptoms
    drop_table :admissions_observations
  end
end
