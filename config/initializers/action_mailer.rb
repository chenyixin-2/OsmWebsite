# Configure ActionMailer SMTP settings
ActionMailer::Base.smtp_settings = {
  :address => "smtp.exmail.qq.com",
  :port => 25,
  :domain => "exmail.qq.com",
  :authentication => :login,
  :user_name => 'yxchen@spidersens.com',
  :password => "0107Chentoz*",
  :enable_starttls_auto => true,
}

# Set the host and protocol for all ActionMailer URLs
ActionMailer::Base.default_url_options = {
  :host => Settings.server_url,
  :protocol => Settings.server_protocol
}
