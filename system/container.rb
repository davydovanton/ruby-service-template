# frozen_string_literal: true

require 'dry/system/container'
require_relative '../lib/core/types'

require 'rom'
require 'rom-sql'

# General container class for project dependencies
#
# {http://dry-rb.org/gems/dry-system/ Dry-system documentation}
class Container < Dry::System::Container
  # use :bootsnap
  use :env

  configure do |config|
    ENV['PROJECT_ENV'] ||= 'development'
    config.env = ENV['PROJECT_ENV']
  end

  load_paths!('system', 'lib')
end

Import = Container.injector

require_relative './registration' unless Container[:settings].project_apps.include?('rake')
