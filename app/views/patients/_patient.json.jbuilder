json.extract! patient, :id, :fname, :lname, :age, :diagnosis, :created_at, :updated_at
json.url patient_url(patient, format: :json)
