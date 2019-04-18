class Allergy < ApplicationRecord
  has_many :patients_allergies
  has_many :patients, through: :patients_allergies
end
