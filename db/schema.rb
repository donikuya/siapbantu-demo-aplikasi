# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 4) do

  create_table "feedbacks", :force => true do |t|
    t.string "nama"
    t.string "email"
    t.text   "saran"
  end

  create_table "infos", :force => true do |t|
    t.string   "judul"
    t.text     "isi"
    t.string   "author"
    t.datetime "tanggal"
  end

  create_table "komentars", :force => true do |t|
    t.integer  "info_id"
    t.text     "komentar"
    t.string   "nama"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kontaks", :force => true do |t|
    t.string   "nama"
    t.string   "email"
    t.text     "pesan"
    t.datetime "tanggal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
