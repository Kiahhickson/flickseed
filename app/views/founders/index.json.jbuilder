json.array!(@founders) do |founder|
  json.extract! founder, :id, :founder_id, :name, :company_name, :email_address, :password_digest, :location, :website, :profile_picture, :description, :industry, :capital_required, :equity_share, :video, :image_one, :image_two, :image_three, :image_four
  json.url founder_url(founder, format: :json)
end
