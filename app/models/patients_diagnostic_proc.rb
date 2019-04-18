class PatientsDiagnosticProc < ApplicationRecord
  belongs_to :patient
  belongs_to :diagnostic_procedure
end
