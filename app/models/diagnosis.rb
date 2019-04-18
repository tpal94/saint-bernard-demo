class Diagnosis < ApplicationRecord
  has_many :patients_diagnoses
  has_many :patients, through: :patients_diagnoses

  has_many :chronic_conditions, through: :patients_diagnoses, source: :diagnosis

  has_many :admissions_diagnoses
  has_many :admissions, through: :admission_diagnoses

  def described_code
    "(#{code}) #{description}"
  end
end
