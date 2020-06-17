# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['MJ_APIKEY_PUBLIC'],
  :password => ENV['MJ_APIKEY_PRIVATE'],
  :domain => 'whiteboard-development.herokuapp.com',
  :address => 'in-v3.mailjet.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}