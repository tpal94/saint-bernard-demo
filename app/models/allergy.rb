class Allergy < ApplicationRecord

  has_and_belongs_to_many :patients

  # has_many :patients_allergies
  # has_many :patients, through: :patients_allergies
end
