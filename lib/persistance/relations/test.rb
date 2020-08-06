# frozen_string_literal: true

module Persistance
  module Relations
    class Test < ROM::Relation[:sql]
      schema(:tests, infer: true)
    end
  end
end
