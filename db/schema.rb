# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160318082258) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",                   limit: 255
    t.string   "user_id",                 limit: 255
    t.text     "body",                    limit: 65535
    t.string   "cached_category_list",    limit: 100
    t.boolean  "active",                  limit: 1
    t.integer  "approved_comments_count", limit: 4
    t.string   "cached_tag_list",         limit: 255
    t.datetime "published_at"
    t.datetime "edited_at"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "cached_cat_list",         limit: 255
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "article_id",      limit: 255
    t.string   "author",          limit: 255
    t.integer  "author_id",       limit: 4
    t.string   "author_url",      limit: 255
    t.string   "author_email",    limit: 255
    t.text     "body",            limit: 65535
    t.text     "body_html",       limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "main_comment_id", limit: 4
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "slug",       limit: 255
    t.text     "body",       limit: 65535
    t.text     "body_html",  limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",      limit: 4
    t.integer  "taggable_id", limit: 4
    t.integer  "tags_id",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",           limit: 30
    t.integer  "taggings_count", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                limit: 50,  null: false
    t.string   "password",            limit: 60
    t.boolean  "active",              limit: 1
    t.boolean  "admin",               limit: 1
    t.string   "address",             limit: 100
    t.string   "email",               limit: 50
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest",     limit: 255, null: false
    t.string   "authorization_token", limit: 255
  end

end
