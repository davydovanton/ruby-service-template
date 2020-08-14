# frozen_string_literal: true

require 'hanami/api'
require 'hanami/action'
require 'hanami/controller/configuration'

# HACK: We need it for actions, it will be better to put it to system/boot/ folder.
#       But I found some dependency booting issue
#
# Docs for hanami actions:
#   https://github.com/hanami/controller/tree/4bbf1a046f3fa567db77d4cfc1d400fd330f7daa

Container.register('hanami.action.configuration', Hanami::Controller::Configuration.new do |config|
  config.default_response_format = :json
end)

module HTTP
  class App < Hanami::API
  end
end
