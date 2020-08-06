# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :tests do
      primary_key :id

      column :errors, :jsonb, default: '{}'

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
