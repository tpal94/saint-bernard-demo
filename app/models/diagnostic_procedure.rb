class DiagnosticProcedure < ApplicationRecord
  has_many :patients_diagnostic_procs
  has_many :patients, through: :patients_diagnostic_procs
end
