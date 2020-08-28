# frozen_string_literal: true

module Accounts
  module Operations
    class Show < Core::Operation
      include Import[
        :logger,
        repo: 'accounts.repositories.account'
      ]

      def call(id:)
        entity = repo.find(id)
        Success(entity)
      end
    end
  end
end
