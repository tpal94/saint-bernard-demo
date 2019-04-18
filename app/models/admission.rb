class Admission < ApplicationRecord
  has_one :patient

  has_many :admissions_diagnoses
  has_many :diagnoses, through: :admissions_diagnoses

  has_many :admissions_symptoms
  has_many :symptoms, through: :admissions_symptoms

  has_many :admissions_observations
  has_many :observations, through: :admissions_observations
end
