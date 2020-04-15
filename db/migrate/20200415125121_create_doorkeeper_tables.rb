class CreateDoorkeeperTables < ActiveRecord::Migration
  def change
    create_table :oauth_access_tokens do |t|
      t.integer  :resource_owner_id
      t.integer  :application_id
      t.string   :token,                  null: false
      t.string   :refresh_token
      t.integer  :expires_in
      t.datetime :revoked_at
      t.datetime :created_at,             null: false
      t.string   :scopes
    end
 
    add_index :oauth_access_tokens, :token, unique: true
    add_index :oauth_access_tokens, :resource_owner_id
    add_index :oauth_access_tokens, :refresh_token, unique: true
    add_foreign_key(
      :oauth_access_tokens,
      :users,
      column: :resource_owner_id
    )
  end
 end