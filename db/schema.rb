# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_807_100_907) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'

  create_table 'audits', force: :cascade do |t|
    t.integer 'auditable_id'
    t.string 'auditable_type'
    t.integer 'associated_id'
    t.string 'associated_type'
    t.uuid 'user_id'
    t.string 'user_type'
    t.string 'username'
    t.string 'action'
    t.jsonb 'audited_changes'
    t.integer 'version', default: 0
    t.string 'comment'
    t.string 'remote_address'
    t.string 'request_uuid'
    t.datetime 'created_at'
    t.index %w[associated_type associated_id], name: 'associated_index'
    t.index %w[auditable_type auditable_id version], name: 'auditable_index'
    t.index ['created_at'], name: 'index_audits_on_created_at'
    t.index ['request_uuid'], name: 'index_audits_on_request_uuid'
    t.index %w[user_id user_type], name: 'user_index'
  end
end
