# frozen_string_literal: true

# Place for auto register different components of the project
class Container
  auto_register!('lib') do |config|
    config.memoize = true
    config.instance(&:instance)
  end

  # business logic
  auto_register!('services/accounts') do |config|
    config.memoize = true
    config.instance do |component|
      component.identifier[/workers/] ? component.loader.constant : component.instance
    end
  end

  # transport layer
  if self[:settings].project_apps.include?('http')
    auto_register!('apps/http') do |config|
      config.memoize = true
      config.instance(&:instance)
    end
  end
end
