# frozen_string_literal: true

Container.boot(:logger) do |container|
  init do
    require 'semantic_logger'
    require 'stringio'

    use :settings

    if container[:settings].logger_json_formatter == 'true'
      SemanticLogger.add_appender(io: logger_io, formatter: :json)
    else
      SemanticLogger.add_appender(io: logger_io)
    end

    SemanticLogger.default_level = container[:settings].logger_level
    container.register(:logger, SemanticLogger['Service'])
  end

  # detect default logger IO output
  def logger_io
    ENV['PROJECT_ENV'] == 'test' ? StringIO.new : STDOUT
  end
end
