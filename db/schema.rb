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

ActiveRecord::Schema.define(:version => 20121119172025) do

  create_table "agent_statuses", :force => true do |t|
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "agent_types", :force => true do |t|
    t.string   "type"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "agents", :force => true do |t|
    t.integer  "agent_type_id"
    t.integer  "agent_status_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "notes"
    t.integer  "partner_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "agents", ["agent_status_id"], :name => "index_agents_on_agent_status_id"
  add_index "agents", ["agent_type_id"], :name => "index_agents_on_agent_type_id"
  add_index "agents", ["partner_id"], :name => "index_agents_on_partner_id"

  create_table "appointment_statuses", :force => true do |t|
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "appointments", :force => true do |t|
    t.integer  "partner_id"
    t.integer  "agent_id"
    t.integer  "installer_id"
    t.integer  "user_id"
    t.date     "date"
    t.time     "time"
    t.integer  "appointment_status_id"
    t.string   "gcalendar"
    t.string   "title"
    t.string   "location"
    t.text     "notes"
    t.boolean  "completed"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "appointments", ["agent_id"], :name => "index_appointments_on_agent_id"
  add_index "appointments", ["appointment_status_id"], :name => "index_appointments_on_appointment_status_id"
  add_index "appointments", ["installer_id"], :name => "index_appointments_on_installer_id"
  add_index "appointments", ["partner_id"], :name => "index_appointments_on_partner_id"
  add_index "appointments", ["user_id"], :name => "index_appointments_on_user_id"

  create_table "contact_statuses", :force => true do |t|
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contact_types", :force => true do |t|
    t.string   "type"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "installer_statuses", :force => true do |t|
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "installers", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "phone"
    t.integer  "installer_status_id"
    t.text     "notes"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "installers", ["installer_status_id"], :name => "index_installers_on_installer_status_id"
  add_index "installers", ["user_id"], :name => "index_installers_on_user_id"

  create_table "lead_sources", :force => true do |t|
    t.string   "source"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lead_statuses", :force => true do |t|
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lead_steps", :force => true do |t|
    t.string   "step"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leads", :force => true do |t|
    t.integer  "lead_source_id"
    t.integer  "lead_status_id"
    t.integer  "package_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "notes"
    t.integer  "partner_id"
    t.integer  "agent_id"
    t.integer  "installer_id"
    t.integer  "lead_step_id"
    t.boolean  "customer_paid"
    t.boolean  "partner_paid"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "leads", ["agent_id"], :name => "index_leads_on_agent_id"
  add_index "leads", ["installer_id"], :name => "index_leads_on_installer_id"
  add_index "leads", ["lead_source_id"], :name => "index_leads_on_lead_source_id"
  add_index "leads", ["lead_status_id"], :name => "index_leads_on_lead_status_id"
  add_index "leads", ["lead_step_id"], :name => "index_leads_on_lead_step_id"
  add_index "leads", ["package_id"], :name => "index_leads_on_package_id"
  add_index "leads", ["partner_id"], :name => "index_leads_on_partner_id"

  create_table "package_statuses", :force => true do |t|
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "packages", :force => true do |t|
    t.integer  "package_status_id"
    t.string   "title"
    t.string   "description"
    t.string   "price"
    t.string   "commission_partner"
    t.string   "commission_agent"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "packages", ["package_status_id"], :name => "index_packages_on_package_status_id"

  create_table "partner_statuses", :force => true do |t|
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partner_types", :force => true do |t|
    t.string   "type"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partners", :force => true do |t|
    t.integer  "partner_type_id"
    t.integer  "partner_status_id"
    t.string   "name"
    t.string   "contact"
    t.string   "email"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "website"
    t.string   "taxid"
    t.text     "notes"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "partners", ["partner_status_id"], :name => "index_partners_on_partner_status_id"
  add_index "partners", ["partner_type_id"], :name => "index_partners_on_partner_type_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "steps_logs", :force => true do |t|
    t.integer  "lead_step_id"
    t.datetime "date_time"
    t.integer  "lead_id"
    t.integer  "user_id"
    t.text     "notes"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "steps_logs", ["lead_id"], :name => "index_steps_logs_on_lead_id"
  add_index "steps_logs", ["lead_step_id"], :name => "index_steps_logs_on_lead_step_id"
  add_index "steps_logs", ["user_id"], :name => "index_steps_logs_on_user_id"

  create_table "user_types", :force => true do |t|
    t.string   "type"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "user_type_id"
    t.string   "hashed_password"
    t.string   "salt"
    t.text     "notes"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["user_type_id"], :name => "index_users_on_user_type_id"

end
