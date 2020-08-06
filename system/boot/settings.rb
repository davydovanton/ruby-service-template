# frozen_string_literal: true

require 'dry/system/components'

Container.boot(:settings, from: :system) do
  settings do
    Types = Core::Types

    key :project_env, Types::String
    key :project_apps, Types::ProjectApps

    key :database_url, Types::String.constrained(filled: true)
    # key :database_connection_validation_timeout, Types::Coercible::Int.optional # in seconds

    key :logger_json_formatter, Types::String.optional
    key :logger_level,          Types::LoggerLevel
  end
end
