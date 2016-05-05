require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module IncidentTracker
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    
    config.assets.paths << Rails.root.join("app", "assets", "fonts", "images", "javascripts")
    
    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
 
    # Change the path that assets are served from 
    config.assets.prefix = "/assets"

  end
end