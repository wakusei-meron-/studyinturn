json.array!(@applicants) do |applicant|
  json.extract! applicant, :id, :user_id, :entry_id, :body
  json.url applicant_url(applicant, format: :json)
end
