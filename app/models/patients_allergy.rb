class PatientsAllergy < ApplicationRecord
  belongs_to :patient
  belongs_to :allergy
end
