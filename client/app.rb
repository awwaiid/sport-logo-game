require 'opal'
require 'browser/interval'
require 'jquery'
require 'opal-jquery'
require "json"
require 'reactive-ruby'

# Dev-mode hot reloader!
# require 'opal_hot_reloader'
# OpalHotReloader.listen(25222, true)

if ! $loaded # Only set this up once
  $loaded = true
  Document.ready? do
    React.render(
      React.create_element(App),
      Element['#content']
    )
  end
end

class App < React::Component::Base
  def render
    h1 { "Hello!" }
  end
end

