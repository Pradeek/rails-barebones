# Step 2 : Setting up the first route

### config/routes.rb

Set a route to a particular action on a controller

```ruby

BarebonesRails::Application.routes.draw do 
  root to: 'todos#index'
end

```

### app/controllers/application_controller.rb

Sets up csrf protection, have to add tag in layout later

```ruby

class ApplicationController < ActionController::Base
  protect_from_forgery
end

```

### app/controllers/todos_controller.rb

First controller, has one action. Named as specified in routes.rb

```ruby

class TodosController < ApplicationController
  def index

  end
end

```

### views/todos/index.html.erb

Simple view, nothing much, we can add layouts later

### config/initializers/secret_token.rb 

Secret token, stolen from a generated project.

```ruby

BarebonesRails::Application.config.secret_token = 'your_token_here'

```

At this point, we can navigate to localhost:3000 to see the html content that we entered in index.html.erb