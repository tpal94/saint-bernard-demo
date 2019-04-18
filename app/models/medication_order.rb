class MedicationOrder < ApplicationRecord
  has_many :patients_medication_orders
  has_many :patients, through: :patients_medication_orders
end
