class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def up
    create_table :diagnoses do |t|
      t.string :code
      t.text :description
      t.timestamps
    end

    # plural of "diagnosis" is "diagnoses".
    create_table :patients_diagnoses, id: false do |t|
      t.references :diagnosis, null: false
      t.references :patient, null: false
    end
  end

  def down
    drop_table :diagnoses
    drop_table :patients_diagnoses
  end
end
