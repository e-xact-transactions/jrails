$: << File.expand_path("..", __FILE__)

module JRails
  JQUERY_VAR = 'jQuery'
end

# rails pre 4.1 support
ActiveSupport::ProxyObject = ActiveSupport::BasicObject unless defined? ActiveSupport::ProxyObject

require 'jrails/engine'
require 'jrails/railtie'
require 'jrails/selector_assertions' if Rails.env.test?
