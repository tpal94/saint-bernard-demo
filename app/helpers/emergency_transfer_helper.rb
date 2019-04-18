module EmergencyTransferHelper
  def treatments(patient)
    treatments = patient.treatments.pluck(:description, :necessity)
    treatments.each_with_object([]) { |e, r| r << e.join(' ') }.join(', ')
  end

  def admission_diagnoses(patient)
    ad = patient.admission.diagnoses
    ad.each_with_object([]) { |e, r| r << e.described_code }.join(', ')
  end

  def admission_symptoms(patient)
    as = patient.admission.symptoms
    as.each_with_object([]) do |e, r|
      r << "#{e.description}"
    end.join(', ')
  end

  def admission_observations(patient)
    as = patient.admission.observations
    as.each_with_object([]) do |e, r|
      r << "#{e.description}"
    end.join(', ')
  end

  def allergies(patient)
    patient.allergies.pluck(:description).join(', ')
  end

  def chronic_conditions(patient)
    patient.chronic_conditions.each_with_object([]) do |e, r|
      r << e.described_code
    end.join(', ')
  end

  def medications(patient)
    patient.medications.each_with_object([]) do |e, r|
      r << "#{e.name} #{e.dosage} #{e.route} #{e.frequency}"
    end.join(', ')
  end

  def diagnostic_procedures(patient)
    patient.diagnostic_procedures.each_with_object([]) do |e, r|
      r << "#{e.description} at #{e.moment.strftime('%H:%M')}"
    end.join(', ')
  end
end
