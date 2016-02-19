json.array!(@investors) do |investor|
  json.extract! investor, :id, :investor_id, :name, :company_name, :title, :email_address, :password_digest, :website, :profile_picture
  json.url investor_url(investor, format: :json)
end
