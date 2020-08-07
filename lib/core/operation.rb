# frozen_string_literal: true

require 'dry/validation'
require 'dry/monads'
require 'dry/monads/do'

# Base operation class. Provides dry-monads do notation and Result monads.
#
# @api private
#
# @see http://dry-rb.org/gems/dry-monads/1.0/result/ Result monad documentation
# @see http://dry-rb.org/gems/dry-monads/1.0/do-notation/ Do notation documentation
#
# @example
#
#   module Operations
#     class Read < Core::Operation
#       def call(payload)
#         payload = yield Success(payload)
#         Success(payload)
#       end
#     end
#   end
#
#   Operations::Read.new.call(a: 1) # => Success(a: 1)
module Core
  class Operation
    include Dry::Monads[:try, :result]
    include Dry::Monads::Do.for(:call)

    Dry::Validation.load_extensions(:monads)

    def call(*)
      raise NotImplementedError
    end
  end
end
