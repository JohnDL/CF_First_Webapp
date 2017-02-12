
# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '25, 587',
  :authentication => :plain,
  :user_name => ENV['apikey'],
  :password => ENV['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'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}