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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130415155200) do

  create_table "artists", :force => true do |t|
    t.string   "lastName"
    t.string   "firstName"
    t.string   "nationality"
    t.date     "dateOfBirth"
    t.date     "dateDeceased"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "artists", ["email"], :name => "index_artists_on_email"
  add_index "artists", ["username"], :name => "index_artists_on_username"

  create_table "customers", :force => true do |t|
    t.string   "lastName"
    t.string   "firstName"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "areaCode"
    t.string   "phoneNumber"
    t.string   "email"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "remember_token"
  end

  add_index "customers", ["email"], :name => "index_customers_on_email"
  add_index "customers", ["remember_token"], :name => "index_customers_on_remember_token"
  add_index "customers", ["username"], :name => "index_customers_on_username"

  create_table "employees", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.integer  "role"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testimonials", :force => true do |t|
    t.text     "testimonialContent"
    t.integer  "customer_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "testimonials", ["customer_id", "created_at"], :name => "index_testimonials_on_customer_id_and_created_at"
  add_index "testimonials", ["testimonialContent"], :name => "index_testimonials_on_testimonialContent"

  create_table "works", :force => true do |t|
    t.string   "title"
    t.string   "medium"
    t.string   "description"
    t.string   "copy"
    t.integer  "artist_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "works", ["artist_id"], :name => "index_works_on_artist_id"

end
