require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module SlowFood
  class Application < Rails::Application
    config.load_defaults 5.1

    # Disable generation of helpers, javascripts, css, and view, helper, routing and controller specs
    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.view_specs false
      generate.helper_specs false
      generate.routing_specs false
      generate.controller_specs false
    end
  end
end
