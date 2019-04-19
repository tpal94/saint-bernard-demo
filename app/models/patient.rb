class Patient < ApplicationRecord
  belongs_to :gender
  belongs_to :admission
  
  has_and_belongs_to_many :allergies

  has_many :patients_allergies
  has_many :allergies, through: :patients_allergies

  has_many :patients_diagnoses
  has_many :diagnoses, through: :patients_diagnoses
  has_many :chronic_conditions, through: :patients_diagnoses, source: :diagnosis

  has_many :patients_diagnostic_procs
  has_many :diagnostic_procedures, through: :patients_diagnostic_procs

  has_many :patients_treatments
  has_many :treatments, through: :patients_treatments

  has_many :patients_medication_orders
  has_many :medication_orders, through: :patients_medication_orders

  def age
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

  def medications
    medication_orders
  end
end
