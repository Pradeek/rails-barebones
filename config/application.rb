require "action_controller/railtie" # Needed for loading Rails::Application

module BarebonesRails
  class Application < Rails::Application
    
    # Set up default encoding for templates
    config.encoding = "utf-8"

    # Filter parameters from the log
    config.filter_parameters += [:password]

    # Escape HTML in JSON
    config.active_support.escape_html_entities_in_json = true

    # Enable the asset pipeline
    config.assets.enabled = true

  end
end