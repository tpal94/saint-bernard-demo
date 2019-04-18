class Treatment < ApplicationRecord
  has_many :patients_treatments
  has_many :patients, through: :patients_treatments
end
