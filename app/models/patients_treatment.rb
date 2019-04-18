class PatientsTreatment < ApplicationRecord
  belongs_to :patient
  belongs_to :treatment
end
