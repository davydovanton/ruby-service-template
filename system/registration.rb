# frozen_string_literal: true

# Place for auto register different components of the project
class Container
  auto_register!('lib') do |config|
    config.memoize = true
    config.instance(&:instance)
  end
end
