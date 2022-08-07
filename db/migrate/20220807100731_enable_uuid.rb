# frozen_string_literal: true

# Enabled UUID. Will be using uuid instead of ID.
class EnableUuid < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto'
  end
end
