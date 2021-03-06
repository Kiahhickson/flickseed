# == Schema Information
#
# Table name: investors
#
#  id              :integer          not null, primary key
#  investor_id     :integer
#  name            :text
#  company_name    :text
#  title           :text
#  email_address   :text
#  password_digest :text
#  website         :text
#  profile_picture :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Investor < ActiveRecord::Base
end
