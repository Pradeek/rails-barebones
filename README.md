# rails-barebones

rails-barebones is a very basic rails app in which everything is completely hand-written in order to fully understand how Rails works. [This guide](http://guides.rubyonrails.org/initialization.html) is a great reference.

## The first steps : Set up a Rails app

Note : These could be done in the same file but I'm setting up everything like Rails normally does if you generate a project.

#### config/application.rb

Set up basic configuration for the Rails app.

#### config/boot.rb

Set up bundler

#### config/environment.rb

Initializes the app

#### script/rails

Sets up the app path to let the rails CLI know that this is a Rails app.

#### Gemfile 

Pretty standard, nothing to say

#### config.ru

Loads the environment and starts the app

At this point, running 'rails server' will start the Rails app. But no routes have been set.