# frozen_string_literal: true

# Docs: https://rom-rb.org/learn/factory/0.10/
Factory.define(:test) do |f|
  f.errors { { a: 1, b: 2 } }

  f.timestamps
end
