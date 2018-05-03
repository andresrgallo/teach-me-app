json.extract! profile, :id, :user_id, :first_name, :last_name, :address, :state, :suburb, :postcode, :qualifications, :work_experience, :facebook_account, :twitter_account, :status, :created_at, :updated_at
json.url profile_url(profile, format: :json)
