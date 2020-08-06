# frozen_string_literal: true

module Persistance
  class Repository < ROM::Repository::Root
    include Import['persistence.container']

    commands :create, update: :by_pk,
                      use: :timestamps,
                      plugins_options: {
                        timestamps: {
                          timestamps: %i(created_at updated_at)
                        }
                      }

    def find(id)
      root.by_pk(id).one
    end

    def all
      root.to_a
    end

    def count
      root.count
    end
  end
end
