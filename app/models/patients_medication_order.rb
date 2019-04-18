class PatientsMedicationOrder < ApplicationRecord
  belongs_to :patient
  belongs_to :medication_order
end
