require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BeatsByRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.generators do |g|
      g.controller_specs false #No controller spec tests
      g.helper false #No Controller helpers
      g.helper_specs false
      g.javascript false
      g.stylesheets false
      g.javascript_engine false
    end
  end
end
