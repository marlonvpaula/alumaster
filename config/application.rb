require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Alumaster
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec
      # don't generate RSpec tests for views and helpers
      g.view_specs false
      g.helper_specs false
      g.request_specs false

      # do not generate assets nor helpers
      g.assets false
      g.helper false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Brasilia'
    config.serve_static_assets = true

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
    config.i18n.default_locale = :'pt-BR'  

    #config.action_mailer.raise_delivery_errors = true
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        :address              => "smtp.gmail.com",
        :port                 => 587,
        :domain               => 'gmail.com',
        :user_name            => 'marlonvpaula@gmail.com',
        :password             => 'mndgo167',
        :authentication       => 'plain',
        :enable_starttls_auto => true  }
    
    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
