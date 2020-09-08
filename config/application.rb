require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"
require "view_component/engine"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Quickstart
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Don't generate system test files.
    config.generators.system_tests = nil
    config.generators.stylesheets = nil
    config.generators.helper = nil
    config.generators.test_framework :rspec, view_specs: false, routing_specs: false

    config.active_job.queue_adapter = :sidekiq

    host = URI(ENV["HOST_URL"])
    Rails.application.routes.default_url_options = { host: host.host, protocol: host.scheme }
    config.action_controller.default_url_options = { host: host.host, protocol: host.scheme }
    config.action_controller.asset_host = host.to_s
    config.action_mailer.default_url_options = { host: host.host, protocol: host.scheme }
    config.action_mailer.asset_host = host.to_s
    config.action_cable.allowed_request_origins = [host.to_s]
  end
end
