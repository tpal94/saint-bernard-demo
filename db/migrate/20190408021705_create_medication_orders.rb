class CreateMedicationOrders < ActiveRecord::Migration[5.2]
  def up
    create_table :medication_orders do |t|
      t.string :name
      t.string :unit, default: 'mg'
      t.string :dosage
      t.string :frequency, default: 'often'
      t.string :route, default: 'PO'
      t.timestamps
    end

    create_table :patients_medication_orders, id: false do |t|
      t.references :medication_order, null: false
      t.references :patient, null: false
    end
  end

  def down
    drop_table :medication_orders
    drop_table :patients_medication_orders
  end
end
