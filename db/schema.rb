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

ActiveRecord::Schema.define(version: 20140720175626) do

  create_table "tweets", force: true do |t|
    t.integer  "twitter_account_id"
    t.string   "profile_image_url"
    t.text     "text"
    t.integer  "twitter_id"
    t.text     "raw_twitt"
    t.integer  "retweet_count"
    t.string   "from_user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tweets", ["twitter_account_id"], name: "index_tweets_on_twitter_account_id"

  create_table "twitter_accounts", force: true do |t|
    t.string   "name"
    t.string   "screen_name"
    t.text     "description"
    t.string   "profile_image_url"
    t.integer  "followers_count"
    t.integer  "friends_count"
    t.integer  "statuses_count"
    t.string   "url"
    t.integer  "twitter_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
