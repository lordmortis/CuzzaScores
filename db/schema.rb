# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 201101271131504) do

  create_table "content_blocks", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "bodytext"
    t.boolean  "autosummarize", :default => false, :null => false
    t.integer  "editor_id"
    t.integer  "author_id"
    t.boolean  "published",     :default => false, :null => false
    t.integer  "tweet_id"
    t.string   "short_url"
    t.boolean  "preview",       :default => true,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "content_blocks", ["author_id"], :name => "index_content_blocks_on_author_id"
  add_index "content_blocks", ["editor_id"], :name => "index_content_blocks_on_editor_id"

  create_table "content_pages", :force => true do |t|
    t.string   "name",             :null => false
    t.integer  "content_block_id"
    t.integer  "content_tag_id"
    t.integer  "order_index"
    t.boolean  "home"
    t.boolean  "navbar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_tag_blocks", :force => true do |t|
    t.integer  "content_tag_id"
    t.integer  "content_block_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_tags", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.string   "name"
    t.boolean  "cumulative"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nicknames", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", :force => true do |t|
    t.integer  "value"
    t.integer  "nickname_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "role_id",    :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                                            :null => false
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
