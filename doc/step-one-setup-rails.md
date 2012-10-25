# The first steps : Set up a Rails app

Note : These could be done in the same file but I'm setting up everything like Rails normally does if you generate a project.

### config/application.rb

Set up basic configuration for the Rails app.

```ruby

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

```

### config/boot.rb

Set up bundler

```ruby

require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

```

### config/environment.rb

Initializes the app

```ruby

require File.expand_path('../application', __FILE__)

BarebonesRails::Application.initialize!

```

### script/rails

Sets up the app path to let the rails CLI know that this is a Rails app.

```ruby

#!/usr/bin/env ruby

APP_PATH = File.expand_path('../../config/application',  __FILE__)
require File.expand_path('../../config/boot',  __FILE__)
require 'rails/commands'

```

### Gemfile 

Pretty standard, nothing special

```ruby

source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'jquery-rails'

group :development, :test do
  gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

```

### config.ru

Loads the environment and starts the app

```ruby

require ::File.expand_path('../config/environment', __FILE__)
run BarebonesRails::Application

```

At this point, running 'rails server' will start the Rails app. But no routes have been set.