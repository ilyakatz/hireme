Apipie.configure do |config|
  config.app_name                = "Hireme"
  config.api_base_url            = "/api"
  config.doc_base_url            = "/doc/api"
  # were is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/*.rb"
  config.copyright               = "&copy; #{Time.now.year} <a href='http://ilyakatz.github.io/hireme '>Ilya Katz</a>"
  config.app_info                = "This developer thinks that hiring needs an upgrade"
end
