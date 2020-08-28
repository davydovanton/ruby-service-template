# frozen_string_literal: true

module Accounts
  module Repositories
    class Account < Persistance::Repository[:tests]
      struct_namespace Accounts::Entities

      commands :create, update: :by_pk, use: :timestamps,
                        plugins_options: { timestamps: { timestamps: %i(created_at updated_at) } }
    end
  end
end
