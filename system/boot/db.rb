# frozen_string_literal: true

Container.boot(:db) do |container|
  init do
    use :settings

    register('db.config', ROM::Configuration.new(:sql, container[:settings].database_url))
  end
end
