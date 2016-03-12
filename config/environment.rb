# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Enable ActionMailer with Sendgrid
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => ENV['kpez16'],
    :password => ENV['kixalot16'],
    :domain => 'heroku.com',
    :enable_starttls_auto => true
    }