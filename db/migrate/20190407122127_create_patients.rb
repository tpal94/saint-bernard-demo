class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mr
      t.datetime :dob
      t.references :gender
      t.references :admission
      t.references :medication_order
      t.references :diagnostic_procedure
      t.references :treatments
      t.timestamps
    end
  end
end
