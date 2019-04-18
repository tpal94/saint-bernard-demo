class PatientsDiagnosis < ApplicationRecord
  belongs_to :patient
  belongs_to :diagnosis
end

