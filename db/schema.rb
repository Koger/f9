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

ActiveRecord::Schema.define(version: 0) do

  create_table "agroup", primary_key: "agroup_id", force: true do |t|
    t.integer "speciality_id",   limit: 2, precision: 0, scale: 0,                                 null: false
    t.integer "actual_sess",     limit: 2, precision: 0, scale: 0,                                 null: false
    t.integer "cmp_id",          limit: 4, precision: 0, scale: 0,                                 null: false
    t.integer "train_level_id",  limit: 2, precision: 0, scale: 0
    t.integer "faculty_id",      limit: 2, precision: 0, scale: 0, default: 9,                     null: false
    t.integer "start_level",     limit: 2, precision: 0, scale: 0,                                 null: false
    t.string  "faculty_no",      limit: 3,               scale: 0,                                 null: false
    t.string  "group_name",      limit: 3,               scale: 0,                                 null: false
    t.integer "close_smstr",     limit: 2, precision: 0, scale: 0
    t.integer "start_smstr",     limit: 2, precision: 0, scale: 0
    t.integer "stu_qty",         limit: 2, precision: 0, scale: 0, default: 0,                     null: false
    t.integer "course",          limit: 8, precision: 0, scale: 0
    t.string  "agroup_name",     limit: 0,               scale: 0
    t.date    "agroup_ins_date",                         scale: 0, default: '2013-10-28',          null: false
    t.time    "agroup_ins_time",                         scale: 0, default: '1970-01-01 14:45:34', null: false
    t.date    "agroup_edt_date",                         scale: 0, default: '2013-10-28',          null: false
    t.time    "agroup_edt_time",                         scale: 0, default: '1970-01-01 14:45:34', null: false
    t.integer "foreign_stu_qty", limit: 2, precision: 0, scale: 0, default: 0,                     null: false
  end

  add_index "agroup", ["actual_sess"], name: "fk_agroup_semestr"
  add_index "agroup", ["cmp_id"], name: "fk_agroup_cmp"
  add_index "agroup", ["cmp_id"], name: "unq_agroup", unique: true
  add_index "agroup", ["faculty_id"], name: "fk_agroup_faculty"
  add_index "agroup", ["faculty_no"], name: "unq_agroup", unique: true
  add_index "agroup", ["group_name"], name: "unq_agroup", unique: true
  add_index "agroup", ["speciality_id"], name: "fk_agroup_speciality"
  add_index "agroup", ["train_level_id"], name: "fk_agroup_train_level"

  create_table "aorder", primary_key: "aorder_id", force: true do |t|
    t.integer "order_type_id",      limit: 2,   precision: 0, scale: 0, default: 1,                     null: false
    t.integer "order_state_id",     limit: 2,   precision: 0, scale: 0, default: 1,                     null: false
    t.integer "cmp_id",             limit: 4,   precision: 0, scale: 0,                                 null: false
    t.integer "user_id",            limit: 2,   precision: 0, scale: 0
    t.integer "aorder_sub_type_id", limit: 2,   precision: 0, scale: 0, default: 0
    t.string  "aorder_no",          limit: 8,                 scale: 0, default: "-",                   null: false
    t.date    "aorder_date",                                  scale: 0, default: '2013-10-28'
    t.string  "aorder_note",        limit: 100,               scale: 0
    t.date    "ins_date",                                     scale: 0, default: '2013-10-28',          null: false
    t.date    "edt_date",                                     scale: 0, default: '2013-10-28',          null: false
    t.time    "ins_time",                                     scale: 0, default: '1970-01-01 14:45:34', null: false
    t.time    "edt_time",                                     scale: 0, default: '1970-01-01 14:45:34', null: false
  end

  add_index "aorder", ["aorder_date"], name: "aorder_idx_date_no"
  add_index "aorder", ["aorder_no"], name: "aorder_idx_date_no"
  add_index "aorder", ["aorder_sub_type_id"], name: "fk_aorder_sub_type"
  add_index "aorder", ["cmp_id"], name: "fk_aorder_cmp"
  add_index "aorder", ["order_state_id"], name: "r_188"
  add_index "aorder", ["order_type_id"], name: "r_186"

  create_table "aorder_item", primary_key: "aorder_item_id", force: true do |t|
    t.integer "aorder_id",            limit: 4,   precision: 0, scale: 0,                                 null: false
    t.integer "edu_id",               limit: 4,   precision: 0, scale: 0,                                 null: false
    t.integer "order_action_type_id", limit: 2,   precision: 0, scale: 0, default: 1,                     null: false
    t.integer "faculty_id",           limit: 2,   precision: 0, scale: 0, default: 9
    t.integer "contract_id",          limit: 4,   precision: 0, scale: 0,                                 null: false
    t.integer "school_id",            limit: 2,   precision: 0, scale: 0
    t.integer "aoi_no",               limit: 2,   precision: 0, scale: 0
    t.string  "aoi_new_surname",      limit: 20,                scale: 0
    t.string  "aoi_note",             limit: 100,               scale: 0
    t.string  "aoi_contract_no",      limit: 20,                scale: 0
    t.date    "aoi_edt_date",                                   scale: 0, default: '2013-10-28',          null: false
    t.date    "aoi_ins_date",                                   scale: 0, default: '2013-10-28',          null: false
    t.date    "aoi_exc_date",                                   scale: 0
    t.time    "aoi_ins_time",                                   scale: 0, default: '1970-01-01 14:45:35', null: false
  end

  add_index "aorder_item", ["aorder_id"], name: "r_74"
  add_index "aorder_item", ["aorder_id"], name: "unq_aorder_item", unique: true
  add_index "aorder_item", ["contract_id"], name: "fk_aorder_item_1"
  add_index "aorder_item", ["edu_id"], name: "r_185"
  add_index "aorder_item", ["edu_id"], name: "unq_aorder_item", unique: true
  add_index "aorder_item", ["edu_id"], name: "xif5aorder_item"
  add_index "aorder_item", ["faculty_id"], name: "r_192"
  add_index "aorder_item", ["order_action_type_id"], name: "r_190"

  create_table "aorder_sub_type", primary_key: "aorder_sub_type_id", force: true do |t|
    t.string "aorder_sub_type_name", limit: 50, scale: 0
  end

  create_table "ayear", primary_key: "ayear_id", force: true do |t|
    t.integer "start_year", limit: 2, precision: 0, scale: 0, null: false
    t.string  "ayear_name", limit: 0,               scale: 0
  end

  add_index "ayear", ["ayear_id"], name: "xpkayear", unique: true
  add_index "ayear", ["start_year"], name: "unq_start_year", unique: true

  create_table "building", primary_key: "building_id", force: true do |t|
    t.integer "building_type_id", limit: 2,  precision: 0, scale: 0, null: false
    t.string  "building_code",    limit: 5,                scale: 0
    t.string  "building_name",    limit: 20,               scale: 0
  end

  add_index "building", ["building_code"], name: "unq_building_code", unique: true
  add_index "building", ["building_name"], name: "unq_building_name", unique: true
  add_index "building", ["building_type_id"], name: "fk_building_building_type"

  create_table "building_type", primary_key: "building_type_id", force: true do |t|
    t.string "building_type_name", limit: 20, scale: 0
  end

  add_index "building_type", ["building_type_name"], name: "unq_building_type_name", unique: true

  create_table "cafedra", id: false, force: true do |t|
    t.integer "cafid",    limit: 2,  precision: 0, scale: 0, null: false
    t.string  "cafnum",   limit: 5,                scale: 0
    t.string  "cafname",  limit: 50,               scale: 0
    t.string  "cafsname", limit: 7,                scale: 0
  end

  create_table "cirr_item", primary_key: "cirr_item_id", force: true do |t|
    t.integer "speciality_id",       limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "subj_id",             limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "teacher_id",          limit: 2, precision: 0,  scale: 0
    t.integer "dept_id",             limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "sess_id",             limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "cmp_id",              limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "train_level_id",      limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "edu_form_id",         limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "qty_hours",           limit: 2, precision: 0,  scale: 0, default: 0,                     null: false
    t.integer "control_type",        limit: 2, precision: 0,  scale: 0, default: 0,                     null: false
    t.integer "hours_lec",           limit: 2, precision: 0,  scale: 0, default: 0,                     null: false
    t.integer "hours_lab",           limit: 2, precision: 0,  scale: 0, default: 0,                     null: false
    t.integer "hours_exers",         limit: 2, precision: 0,  scale: 0, default: 0,                     null: false
    t.integer "hours_proj",          limit: 2, precision: 0,  scale: 0, default: 0,                     null: false
    t.string  "auditory",            limit: 7,                scale: 0
    t.boolean "inc_in_card",                   precision: 0,  scale: 0, default: true,                  null: false
    t.boolean "print_demoiselle",              precision: 0,  scale: 0, default: true,                  null: false
    t.integer "hours_self_instruct", limit: 2, precision: 0,  scale: 0
    t.decimal "ects_credits",                  precision: 12, scale: 4, default: 0.0,                   null: false
    t.integer "control_work_qty",    limit: 2, precision: 0,  scale: 0, default: 0,                     null: false
    t.date    "cirr_item_ins_date",                           scale: 0, default: '2013-10-28',          null: false
    t.time    "cirr_item_ins_time",                           scale: 0, default: '1970-01-01 14:45:35', null: false
    t.date    "cirr_item_edt_date",                           scale: 0, default: '2013-10-28',          null: false
    t.time    "cirr_item_edt_time",                           scale: 0, default: '1970-01-01 14:45:35', null: false
  end

  add_index "cirr_item", ["cmp_id"], name: "fk_cirr_cmp"
  add_index "cirr_item", ["cmp_id"], name: "unq_cirr_item", unique: true
  add_index "cirr_item", ["control_type"], name: "fk_cirr_item_cntrl_type"
  add_index "cirr_item", ["control_type"], name: "unq_cirr_item", unique: true
  add_index "cirr_item", ["dept_id"], name: "fk_cirr_dept"
  add_index "cirr_item", ["edu_form_id"], name: "fk_cirr_item_edu_form"
  add_index "cirr_item", ["edu_form_id"], name: "unq_cirr_item", unique: true
  add_index "cirr_item", ["sess_id"], name: "fk_cirr_item_semestr"
  add_index "cirr_item", ["sess_id"], name: "unq_cirr_item", unique: true
  add_index "cirr_item", ["speciality_id"], name: "fk_cirr_spec"
  add_index "cirr_item", ["speciality_id"], name: "unq_cirr_item", unique: true
  add_index "cirr_item", ["subj_id"], name: "fk_cirr_subj"
  add_index "cirr_item", ["subj_id"], name: "unq_cirr_item", unique: true
  add_index "cirr_item", ["teacher_id"], name: "fk_cirr_teach"
  add_index "cirr_item", ["train_level_id"], name: "fk_cirr_item_train_level"
  add_index "cirr_item", ["train_level_id"], name: "unq_cirr_item", unique: true

  create_table "cmp", primary_key: "cmp_id", force: true do |t|
    t.integer "ayear_id",                        limit: 2,  precision: 0, scale: 0, default: 0,                 null: false
    t.integer "faculty_id",                      limit: 2,  precision: 0, scale: 0, default: 9,                 null: false
    t.integer "actual_sess",                     limit: 2,  precision: 0, scale: 0, default: 12,                null: false
    t.integer "train_level_id",                  limit: 2,  precision: 0, scale: 0, default: 6,                 null: false
    t.integer "edu_form_id",                     limit: 2,  precision: 0, scale: 0, default: 1,                 null: false
    t.string  "sys_name",                        limit: 50,               scale: 0
    t.string  "deans_name",                      limit: 50,               scale: 0
    t.string  "vice_dean_name",                  limit: 50,               scale: 0
    t.string  "metod_name",                      limit: 50,               scale: 0
    t.date    "start_edu_date",                                           scale: 0
    t.date    "finish_edu_date",                                          scale: 0
    t.integer "smstr_qty",                       limit: 2,  precision: 0, scale: 0, default: 9,                 null: false
    t.integer "course",                          limit: 2,  precision: 0, scale: 0, default: 1
    t.binary  "vice_dean_sign",                                           scale: 0
    t.boolean "prn_sign_on_demoiselle",                     precision: 0, scale: 0, default: true,              null: false
    t.integer "demoiselle_on_hand_qty",          limit: 2,  precision: 0, scale: 0, default: 0,                 null: false
    t.integer "prn_invitation_if_has_debt",      limit: 2,  precision: 0, scale: 0, default: 0,                 null: false
    t.boolean "prn_demoiselle_if_has_prev_debt",            precision: 0, scale: 0, default: false,             null: false
    t.boolean "cmp_closed",                                 precision: 0, scale: 0, default: true,              null: false
    t.string  "cmp_room",                        limit: 10,               scale: 0, default: "310ім"
    t.string  "cmp_phone_no",                    limit: 20,               scale: 0, default: "(057) 788-41-46"
    t.boolean "prn_no_on_demoiselle",                       precision: 0, scale: 0, default: true,              null: false
    t.boolean "cmp_uses_ects",                              precision: 0, scale: 0, default: false,             null: false
    t.string  "namboname",                       limit: 20,               scale: 0
  end

  add_index "cmp", ["actual_sess"], name: "fk_cmp_sess"
  add_index "cmp", ["actual_sess"], name: "unq_actual_sess", unique: true
  add_index "cmp", ["ayear_id"], name: "fk_cmp_ayear"
  add_index "cmp", ["cmp_id"], name: "unq_actual_sess", unique: true
  add_index "cmp", ["edu_form_id"], name: "fk_cmp_edu_form"
  add_index "cmp", ["faculty_id"], name: "fk_cmp"
  add_index "cmp", ["train_level_id"], name: "fk_cmptrain_level_id"

  create_table "cmp_speciality", primary_key: "cmp_speciality_id", force: true do |t|
    t.integer "cmp_id",                  limit: 2,   precision: 0, scale: 0,                        null: false
    t.integer "speciality_id",           limit: 2,   precision: 0, scale: 0,                        null: false
    t.integer "train_level_id",          limit: 2,   precision: 0, scale: 0,                        null: false
    t.string  "speciality_alpha",        limit: 3,                 scale: 0
    t.string  "speciality_beta",         limit: 3,                 scale: 0
    t.integer "stu_qty_now",             limit: 2,   precision: 0, scale: 0
    t.integer "lic_graduate_qty",        limit: 2,   precision: 0, scale: 0
    t.string  "cmp_speciality_qual",     limit: 150,               scale: 0
    t.date    "cmp_speciality_ins_date",                           scale: 0, default: '2013-10-28', null: false
    t.date    "cmp_speciality_edt_date",                           scale: 0, default: '2013-10-28', null: false
    t.boolean "print_schedule",                      precision: 0, scale: 0, default: true,         null: false
  end

  add_index "cmp_speciality", ["cmp_id"], name: "fk_cmp_speciality_cmp"
  add_index "cmp_speciality", ["cmp_id"], name: "unq_cmp_speciality", unique: true
  add_index "cmp_speciality", ["speciality_id"], name: "fk_cmp_speciality_speciality"
  add_index "cmp_speciality", ["speciality_id"], name: "unq_cmp_speciality", unique: true
  add_index "cmp_speciality", ["train_level_id"], name: "fk_cmp_speciality_train_level"
  add_index "cmp_speciality", ["train_level_id"], name: "unq_cmp_speciality", unique: true

  create_table "cmp_state_exam", primary_key: "cmp_se_id", force: true do |t|
    t.integer "cmp_id",         limit: 4, precision: 0, scale: 0,                        null: false
    t.date    "se_start_date",                          scale: 0
    t.date    "se_finish_date",                         scale: 0
    t.date    "se_ins_date",                            scale: 0, default: '2013-10-28', null: false
    t.date    "se_edt_date",                            scale: 0, default: '2013-10-28', null: false
  end

  add_index "cmp_state_exam", ["cmp_id"], name: "fk_cmp_state_exam_cmp"

  create_table "cmp_train_level", primary_key: "cmp_train_level_id", force: true do |t|
    t.integer "cmp_id",          limit: 4, precision: 0, scale: 0,                        null: false
    t.integer "train_level_id",  limit: 2, precision: 0, scale: 0,                        null: false
    t.date    "ctl_start_date",                          scale: 0, default: '2013-10-28', null: false
    t.date    "ctl_finish_date",                         scale: 0, default: '2013-10-28', null: false
    t.date    "cmp_start_date",                          scale: 0, default: '2013-10-28', null: false
    t.date    "cmp_finish_date",                         scale: 0, default: '2013-10-28', null: false
  end

  add_index "cmp_train_level", ["cmp_id"], name: "fk_cmp_train_level_cmp"
  add_index "cmp_train_level", ["cmp_id"], name: "unq_cmp_train_level", unique: true
  add_index "cmp_train_level", ["train_level_id"], name: "fk_cmp_train_level_tl"
  add_index "cmp_train_level", ["train_level_id"], name: "unq_cmp_train_level", unique: true

  create_table "cntrl", primary_key: "cntrl_id", force: true do |t|
    t.string "cntrl_name", limit: 20, scale: 0
  end

  create_table "cntrl_lng", primary_key: "cntrl_id", force: true do |t|
    t.integer "lng_id",           limit: 2,  precision: 0, scale: 0, null: false
    t.string  "cntrl_short_name", limit: 10,               scale: 0, null: false
    t.string  "cntrl_full_name",  limit: 20,               scale: 0, null: false
  end

  add_index "cntrl_lng", ["cntrl_full_name"], name: "unq_cntrl_lng_full_name", unique: true
  add_index "cntrl_lng", ["cntrl_id"], name: "fk_cntrl_lng_cntrl"
  add_index "cntrl_lng", ["cntrl_short_name"], name: "unq_cntrl_lng_short_name", unique: true
  add_index "cntrl_lng", ["lng_id"], name: "fk_cntrl_lng_lng"
  add_index "cntrl_lng", ["lng_id"], name: "unq_cntrl_lng_full_name", unique: true
  add_index "cntrl_lng", ["lng_id"], name: "unq_cntrl_lng_short_name", unique: true

  create_table "cntrl_type", primary_key: "cntrl_type_id", force: true do |t|
    t.boolean "rec_book_side",                 precision: 0, scale: 0, default: true, null: false
    t.string  "cntrl_type_name",    limit: 25,               scale: 0,                null: false
    t.string  "cntrl_type_sh_name", limit: 7,                scale: 0
  end

  create_table "cntrl_type_lng", primary_key: "cntrl_type_id", force: true do |t|
    t.integer "lng_id",                limit: 2,  precision: 0, scale: 0, null: false
    t.string  "cntrl_type_full_name",  limit: 25,               scale: 0, null: false
    t.string  "cntrl_type_short_name", limit: 10,               scale: 0, null: false
  end

  add_index "cntrl_type_lng", ["cntrl_type_id"], name: "fk_cntrl_type_lng_2"
  add_index "cntrl_type_lng", ["lng_id"], name: "fk_cntrl_type_lng_lng"

  create_table "contract", primary_key: "contract_id", force: true do |t|
    t.integer  "card_id",               limit: 4,   precision: 0,  scale: 0,                                 null: false
    t.integer  "speciality_id",         limit: 2,   precision: 0,  scale: 0
    t.integer  "train_level_id",        limit: 2,   precision: 0,  scale: 0,                                 null: false
    t.integer  "edu_form_id",           limit: 2,   precision: 0,  scale: 0,                                 null: false
    t.integer  "edu_financing_type_id", limit: 2,   precision: 0,  scale: 0, default: 2,                     null: false
    t.integer  "faculty_id",            limit: 2,   precision: 0,  scale: 0, default: 900,                   null: false
    t.integer  "cmp_id",                limit: 2,   precision: 0,  scale: 0,                                 null: false
    t.string   "contract_no",           limit: 20,                 scale: 0
    t.date     "contract_date",                                    scale: 0
    t.string   "contract_status",       limit: 1,                  scale: 0, default: "Y",                   null: false
    t.string   "inc_by_order",          limit: 20,                 scale: 0
    t.date     "inc_order_date",                                   scale: 0
    t.date     "inc_date",                                         scale: 0
    t.string   "exc_by_order",          limit: 20,                 scale: 0
    t.date     "exc_order_date",                                   scale: 0
    t.date     "exc_date",                                         scale: 0
    t.datetime "last_edit_date",                                   scale: 0, default: '2013-10-28 14:45:35', null: false
    t.decimal  "smstr_edu_cost",                    precision: 12, scale: 4, default: 500.0,                 null: false
    t.string   "rec_book_no",           limit: 20,                 scale: 0
    t.string   "last_institution",      limit: 100,                scale: 0
    t.date     "ins_date",                                         scale: 0, default: '2013-10-28',          null: false
    t.time     "ins_time",                                         scale: 0, default: '1970-01-01 14:45:35', null: false
    t.boolean  "is_foreign_student",                precision: 0,  scale: 0
    t.integer  "contract_ins_user_id",  limit: 4,   precision: 0,  scale: 0, default: 1,                     null: false
  end

  add_index "contract", ["card_id"], name: "fk_contract_privcard"
  add_index "contract", ["cmp_id"], name: "fk_contract_cmp"
  add_index "contract", ["contract_ins_user_id"], name: "fk_contract_user"
  add_index "contract", ["edu_financing_type_id"], name: "fk_contract_edu_financing_type"
  add_index "contract", ["edu_form_id"], name: "fk_contract_edu_form"
  add_index "contract", ["exc_by_order"], name: "contract_idx_exc_order_no"
  add_index "contract", ["exc_order_date"], name: "contract_idx_exc_date"
  add_index "contract", ["faculty_id"], name: "fk_contract_faculty"
  add_index "contract", ["inc_by_order"], name: "contract_idx_inc_order_no"
  add_index "contract", ["inc_order_date"], name: "contract_idx_inc_order_date"
  add_index "contract", ["speciality_id"], name: "fk_contract"
  add_index "contract", ["train_level_id"], name: "fk_contract_train_level"

  create_table "contract_cntrl", primary_key: "contract_cntrl_id", force: true do |t|
    t.integer  "contract_id",   limit: 4,  precision: 0, scale: 0,                                 null: false
    t.integer  "cirr_item_id",  limit: 4,  precision: 0, scale: 0,                                 null: false
    t.integer  "sess_id",       limit: 2,  precision: 0, scale: 0,                                 null: false
    t.integer  "control",       limit: 2,  precision: 0, scale: 0, default: 0,                     null: false
    t.boolean  "retrial",                  precision: 0, scale: 0, default: true,                  null: false
    t.date     "upd_date",                               scale: 0, default: '2013-10-28',          null: false
    t.time     "upd_time",                               scale: 0, default: '1970-01-01 14:45:36', null: false
    t.datetime "upd_datetime",                           scale: 0
    t.integer  "upd_user_id",   limit: 4,  precision: 0, scale: 0, default: 1
    t.date     "ins_date",                               scale: 0, default: '2013-10-28',          null: false
    t.string   "pc_name",       limit: 50,               scale: 0
    t.string   "pc_user_name",  limit: 50,               scale: 0
    t.boolean  "system_edt",               precision: 0, scale: 0, default: false,                 null: false
    t.string   "cc_comment",    limit: 50,               scale: 0
    t.time     "cc_ins_time",                            scale: 0, default: '1970-01-01 14:45:36', null: false
    t.integer  "hundred_score", limit: 2,  precision: 0, scale: 0
    t.string   "ects_score",    limit: 3,                scale: 0
  end

  add_index "contract_cntrl", ["cirr_item_id"], name: "cc_cirr_item_id"
  add_index "contract_cntrl", ["contract_id"], name: "cc_contract_id"
  add_index "contract_cntrl", ["control"], name: "fk_contract_cntrl_cntrl"
  add_index "contract_cntrl", ["sess_id"], name: "cc_sess_id"

  create_table "dept", primary_key: "dept_id", force: true do |t|
    t.integer "faculty_id",    limit: 2,  precision: 0, scale: 0
    t.integer "dept_type_id",  limit: 2,  precision: 0, scale: 0
    t.string  "dept_name",     limit: 50,               scale: 0
    t.string  "dept_telno",    limit: 20,               scale: 0
    t.string  "dept_auditory", limit: 7,                scale: 0
    t.string  "dept_metod",    limit: 7,                scale: 0
    t.string  "dept_code",     limit: 5,                scale: 0
    t.string  "dept_eml",      limit: 50,               scale: 0
    t.date    "dept_ins_date",                          scale: 0, default: '2013-10-28', null: false
    t.string  "dept_fax",      limit: 20,               scale: 0
  end

  add_index "dept", ["dept_id"], name: "xpkdept", unique: true
  add_index "dept", ["dept_type_id"], name: "fk_dept_dept_type"
  add_index "dept", ["faculty_id"], name: "fk_dept"

  create_table "dept_lng", primary_key: "dept_id", force: true do |t|
    t.integer "lng_id",    limit: 2,  precision: 0, scale: 0, null: false
    t.string  "dept_name", limit: 50,               scale: 0
  end

  add_index "dept_lng", ["dept_id"], name: "fk_dept_lng_dept"
  add_index "dept_lng", ["dept_name"], name: "unq_dept_lng", unique: true
  add_index "dept_lng", ["lng_id"], name: "fk_dept_lng_lng"
  add_index "dept_lng", ["lng_id"], name: "unq_dept_lng", unique: true

  create_table "dept_pers", primary_key: "dept_pers_id", force: true do |t|
    t.integer "dept_id",            limit: 2, precision: 0, scale: 0,                                 null: false
    t.integer "card_id",            limit: 4, precision: 0, scale: 0,                                 null: false
    t.integer "dept_position_id",   limit: 2, precision: 0, scale: 0
    t.integer "person_type",        limit: 2, precision: 0, scale: 0, default: 0,                     null: false
    t.date    "dept_pers_ins_date",                         scale: 0, default: '2013-10-28',          null: false
    t.date    "dept_pers_edt_date",                         scale: 0, default: '2013-10-28',          null: false
    t.time    "dept_pers_edt_time",                         scale: 0, default: '1970-01-01 14:45:36', null: false
    t.time    "dept_pers_ins_time",                         scale: 0, default: '1970-01-01 14:45:36', null: false
  end

  add_index "dept_pers", ["card_id"], name: "fk_dept_pers_privcard"
  add_index "dept_pers", ["card_id"], name: "unq_dept_pers", unique: true
  add_index "dept_pers", ["dept_id"], name: "fk_dept_pers_dept"
  add_index "dept_pers", ["dept_id"], name: "unq_dept_pers", unique: true
  add_index "dept_pers", ["dept_position_id"], name: "fk_dept_pers_position"

  create_table "dept_position", primary_key: "dept_position_id", force: true do |t|
    t.string "dept_position_name",       limit: 20, scale: 0
    t.string "dept_position_short_name", limit: 10, scale: 0
  end

  create_table "dept_type", primary_key: "dept_type_id", force: true do |t|
    t.string "dept_type_full_name",  limit: 20, scale: 0
    t.string "dept_type_short_name", limit: 20, scale: 0
  end

  create_table "diplom", primary_key: "diplom_id", force: true do |t|
    t.integer "speciality_id",       limit: 2,   precision: 0, scale: 0,                        null: false
    t.integer "agroup_id",           limit: 4,   precision: 0, scale: 0,                        null: false
    t.integer "contract_id",         limit: 4,   precision: 0, scale: 0,                        null: false
    t.integer "reviewer_id",         limit: 4,   precision: 0, scale: 0
    t.integer "diplom_work_type_id", limit: 2,   precision: 0, scale: 0
    t.integer "diploma_head_id",     limit: 4,   precision: 0, scale: 0
    t.integer "sess_id",             limit: 2,   precision: 0, scale: 0,                        null: false
    t.boolean "cntrl_chk",                       precision: 0, scale: 0, default: false,        null: false
    t.date    "cntrl_chk_date",                                scale: 0, default: '2013-10-28', null: false
    t.integer "diploma_mark",        limit: 2,   precision: 0, scale: 0, default: 0,            null: false
    t.boolean "diploma_with_honors",             precision: 0, scale: 0, default: false,        null: false
    t.integer "seb_id",              limit: 4,   precision: 0, scale: 0
    t.date    "defence_date",                                  scale: 0
    t.string  "work_theme",          limit: 250,               scale: 0
    t.integer "protocol_no",         limit: 2,   precision: 0, scale: 0
    t.integer "hundred_score",       limit: 2,   precision: 0, scale: 0
    t.string  "ects_score",          limit: 3,                 scale: 0
    t.decimal "proc_3",                          precision: 3, scale: 2
    t.decimal "proc_4",                          precision: 3, scale: 2
    t.decimal "proc_5",                          precision: 3, scale: 2
    t.decimal "proc_a",                          precision: 3, scale: 2
    t.decimal "proc_b",                          precision: 3, scale: 2
    t.decimal "proc_c",                          precision: 3, scale: 2
    t.decimal "proc_d",                          precision: 3, scale: 2
    t.decimal "proc_e",                          precision: 3, scale: 2
    t.boolean "honors_recommend",                precision: 0, scale: 0, default: false,        null: false
  end

  add_index "diplom", ["agroup_id"], name: "fk_diplom_agroup"
  add_index "diplom", ["contract_id"], name: "fk_diplom_contract"
  add_index "diplom", ["diplom_work_type_id"], name: "fk_diplom_1"
  add_index "diplom", ["diploma_head_id"], name: "fk_diplom_head"
  add_index "diplom", ["diploma_mark"], name: "fk_diplom_mark"
  add_index "diplom", ["reviewer_id"], name: "fk_diplom_reviewer"
  add_index "diplom", ["seb_id"], name: "fk_diplom_seb"
  add_index "diplom", ["sess_id"], name: "fk_diplom_sess"
  add_index "diplom", ["speciality_id"], name: "fk_diplom_speciality"

  create_table "diplom_reviewer", primary_key: "card_id", force: true do |t|
    t.string "work_place",        limit: 100, scale: 0
    t.string "reviewer_position", limit: 75,  scale: 0
  end

  add_index "diplom_reviewer", ["card_id"], name: "rdb$foreign29"

  create_table "diplom_topic", primary_key: "diplom_topic_id", force: true do |t|
    t.string  "diplom_topic_name", limit: 30,               scale: 0
    t.integer "diplom_topic_num",  limit: 2,  precision: 0, scale: 0
  end

  create_table "diplom_work_topic", primary_key: "diplom_work_topic_id", force: true do |t|
    t.integer "diplom_id",       limit: 4, precision: 0, scale: 0
    t.integer "pers_id",         limit: 4, precision: 0, scale: 0
    t.integer "diplom_topic_id", limit: 4, precision: 0, scale: 0
  end

  create_table "diplom_work_type", primary_key: "diplom_work_type_id", force: true do |t|
    t.string "diplom_work_type_name", limit: 75, scale: 0
    t.string "prefix",                limit: 1,  scale: 0
    t.string "dwt_short_name",        limit: 20, scale: 0
    t.string "dwt_short_name_rod",    limit: 20, scale: 0
    t.string "dwt_short_name_vin",    limit: 20, scale: 0
  end

  create_table "edu", primary_key: "edu_id", force: true do |t|
    t.integer "contract_id",           limit: 4,  precision: 0, scale: 0,                                 null: false
    t.integer "sess_id",               limit: 2,  precision: 0, scale: 0,                                 null: false
    t.integer "agroup_id",             limit: 4,  precision: 0, scale: 0,                                 null: false
    t.integer "cmp_id",                limit: 4,  precision: 0, scale: 0,                                 null: false
    t.integer "train_level_id",        limit: 2,  precision: 0, scale: 0,                                 null: false
    t.integer "edu_form_id",           limit: 2,  precision: 0, scale: 0,                                 null: false
    t.integer "edu_financing_type_id", limit: 2,  precision: 0, scale: 0, default: 2,                     null: false
    t.boolean "mark",                             precision: 0, scale: 0, default: true,                  null: false
    t.boolean "sess_respite",                     precision: 0, scale: 0, default: false,                 null: false
    t.boolean "accepted_curr",                    precision: 0, scale: 0, default: false,                 null: false
    t.boolean "accepted_next",                    precision: 0, scale: 0, default: false,                 null: false
    t.boolean "accepted_pay_next",                precision: 0, scale: 0, default: true,                  null: false
    t.string  "inp_action",            limit: 1,                scale: 0, default: ">",                   null: false
    t.string  "out_action",            limit: 1,                scale: 0, default: ">",                   null: false
    t.string  "comment",                                        scale: 0
    t.string  "agroup_name",           limit: 10,               scale: 0
    t.integer "no_in_agroup",          limit: 2,  precision: 0, scale: 0
    t.integer "debt_curr_qty",         limit: 2,  precision: 0, scale: 0, default: 0,                     null: false
    t.integer "debt_total_qty",        limit: 2,  precision: 0, scale: 0, default: 0,                     null: false
    t.date    "edu_ins_date",                                   scale: 0, default: '2013-10-28',          null: false
    t.time    "edu_ins_time",                                   scale: 0, default: '1970-01-01 14:45:36', null: false
    t.date    "edu_edt_date",                                   scale: 0, default: '2013-10-28',          null: false
    t.boolean "cntrl_chk",                        precision: 0, scale: 0, default: true,                  null: false
    t.integer "debt_prev_qty",         limit: 8,  precision: 0, scale: 0
  end

  add_index "edu", ["agroup_id"], name: "fk_edu_agr"
  add_index "edu", ["agroup_id"], name: "unq_edu", unique: true
  add_index "edu", ["cmp_id"], name: "fk_edu_cmp"
  add_index "edu", ["contract_id"], name: "fk_edu_con"
  add_index "edu", ["contract_id"], name: "unq_edu", unique: true
  add_index "edu", ["edu_financing_type_id"], name: "fk_edu_financing_type"
  add_index "edu", ["edu_form_id"], name: "fk_edu_edu_form"
  add_index "edu", ["sess_id"], name: "fk_edu_sess"
  add_index "edu", ["sess_id"], name: "unq_edu", unique: true
  add_index "edu", ["train_level_id"], name: "fk_edu_train_level"

  create_table "edu_cost", primary_key: "edu_cost_id", force: true do |t|
    t.integer "edu_form_id",       limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "speciality_id",     limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "cmp_id",            limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "sess_id",           limit: 2, precision: 0,  scale: 0,                                 null: false
    t.integer "train_level_id",    limit: 2, precision: 0,  scale: 0,                                 null: false
    t.decimal "smstr_edu_cost",              precision: 12, scale: 4, default: 0.0,                   null: false
    t.date    "edu_cost_ins_date",                          scale: 0, default: '2013-10-28',          null: false
    t.date    "edu_cost_edt_date",                          scale: 0, default: '2013-10-28',          null: false
    t.time    "edu_cost_ins_time",                          scale: 0, default: '1970-01-01 14:45:36', null: false
    t.time    "edu_cost_edt_time",                          scale: 0, default: '1970-01-01 14:45:36', null: false
  end

  add_index "edu_cost", ["cmp_id"], name: "fk_edu_cost_sess"
  add_index "edu_cost", ["cmp_id"], name: "unq1_edu_cost", unique: true
  add_index "edu_cost", ["edu_form_id"], name: "fk_edu_cost_edu_form"
  add_index "edu_cost", ["edu_form_id"], name: "unq1_edu_cost", unique: true
  add_index "edu_cost", ["sess_id"], name: "fk_edu_cost_sess"
  add_index "edu_cost", ["sess_id"], name: "unq1_edu_cost", unique: true
  add_index "edu_cost", ["speciality_id"], name: "fk_edu_cost_speciality"
  add_index "edu_cost", ["speciality_id"], name: "unq1_edu_cost", unique: true
  add_index "edu_cost", ["train_level_id"], name: "fk_edu_cost_train_level"
  add_index "edu_cost", ["train_level_id"], name: "unq1_edu_cost", unique: true

  create_table "edu_doc", primary_key: "edu_doc_id", force: true do |t|
    t.integer "card_id",             limit: 4,  precision: 0, scale: 0,                                 null: false
    t.integer "train_level_id",      limit: 2,  precision: 0, scale: 0,                                 null: false
    t.integer "okr_id",              limit: 2,  precision: 0, scale: 0,                                 null: false
    t.string  "edu_doc_reg_no",      limit: 10,               scale: 0
    t.string  "edu_doc_seria",       limit: 5,                scale: 0
    t.string  "edu_doc_no",          limit: 10,               scale: 0
    t.date    "edu_doc_date",                                 scale: 0
    t.date    "edu_doc_ins_date",                             scale: 0, default: '2013-10-28',          null: false
    t.date    "edu_doc_edt_date",                             scale: 0, default: '2013-10-28',          null: false
    t.time    "edu_doc_ins_time",                             scale: 0, default: '1970-01-01 14:45:37', null: false
    t.time    "edu_doc_edt_time",                             scale: 0, default: '1970-01-01 14:45:37', null: false
    t.integer "edu_doc_edt_user_id", limit: 4,  precision: 0, scale: 0, default: 1,                     null: false
    t.integer "edu_doc_ins_user_id", limit: 4,  precision: 0, scale: 0, default: 1,                     null: false
    t.integer "contract_id",         limit: 4,  precision: 0, scale: 0
  end

  add_index "edu_doc", ["card_id"], name: "fk_edu_doc_card_id"
  add_index "edu_doc", ["card_id"], name: "unq1_edu_doc", unique: true
  add_index "edu_doc", ["contract_id"], name: "fk_edu_doc_contract"
  add_index "edu_doc", ["edu_doc_date"], name: "unq1_edu_doc", unique: true
  add_index "edu_doc", ["edu_doc_edt_user_id"], name: "fk_edu_doc_edt_user_id"
  add_index "edu_doc", ["edu_doc_ins_user_id"], name: "fk_edu_doc_ins_user_id"
  add_index "edu_doc", ["edu_doc_no"], name: "unq1_edu_doc", unique: true
  add_index "edu_doc", ["okr_id"], name: "fk_edu_doc_okr"
  add_index "edu_doc", ["okr_id"], name: "unq1_edu_doc", unique: true
  add_index "edu_doc", ["train_level_id"], name: "fk_edu_doc_train_level"
  add_index "edu_doc", ["train_level_id"], name: "unq1_edu_doc", unique: true

  create_table "edu_financing_type", primary_key: "edu_financing_type_id", force: true do |t|
    t.string "edu_financing_type_name", limit: 10, scale: 0
    t.string "edu_financing_type_code", limit: 1,  scale: 0
  end

  create_table "edu_form", primary_key: "edu_form_id", force: true do |t|
    t.string  "edu_form_name",      limit: 15,               scale: 0, null: false
    t.integer "smstr_qty_in_ayear", limit: 2,  precision: 0, scale: 0
    t.string  "smstr_name",         limit: 20,               scale: 0
    t.string  "smstr_short_name",   limit: 5,                scale: 0
    t.integer "smstr_bach",         limit: 2,  precision: 0, scale: 0, null: false
  end

  add_index "edu_form", ["edu_form_name"], name: "unq_edu_form_name", unique: true

  create_table "edu_form_lng", primary_key: "edu_form_id", force: true do |t|
    t.integer "lng_id",           limit: 2,   precision: 0, scale: 0, null: false
    t.string  "edu_form_name",    limit: 100,               scale: 0
    t.string  "smstr_name",       limit: 20,                scale: 0
    t.string  "smstr_short_name", limit: 5,                 scale: 0
  end

  add_index "edu_form_lng", ["edu_form_id"], name: "fk_edu_form_lng_1"
  add_index "edu_form_lng", ["lng_id"], name: "fk_edu_form_lng_lng"

  create_table "eduqual", id: false, force: true do |t|
    t.integer "eduqualid", limit: 2,  precision: 0, scale: 0, null: false
    t.string  "eduqual",   limit: 20,               scale: 0
  end

  create_table "examsheet", primary_key: "examsheet_id", force: true do |t|
    t.integer "agroup_id",         limit: 4,   precision: 0, scale: 0,                                 null: false
    t.integer "cirr_item_id",      limit: 4,   precision: 0, scale: 0,                                 null: false
    t.integer "dept_pers_id",      limit: 4,   precision: 0, scale: 0
    t.boolean "recieve_chk",                   precision: 0, scale: 0, default: false,                 null: false
    t.date    "recieve_date",                                scale: 0
    t.string  "examsheet_no",      limit: 10,                scale: 0
    t.date    "examsheet_date",                              scale: 0, default: '2013-10-28',          null: false
    t.date    "ins_date",                                    scale: 0, default: '2013-10-28',          null: false
    t.time    "ins_time",                                    scale: 0, default: '1970-01-01 14:45:37', null: false
    t.boolean "examsheet_printed",             precision: 0, scale: 0, default: true,                  null: false
    t.string  "examsheet_comment", limit: 250,               scale: 0
  end

  add_index "examsheet", ["agroup_id"], name: "fk_examsheet"
  add_index "examsheet", ["agroup_id"], name: "unq_examsheet", unique: true
  add_index "examsheet", ["cirr_item_id"], name: "fk_examsheet_cirr_item"
  add_index "examsheet", ["cirr_item_id"], name: "unq_examsheet", unique: true
  add_index "examsheet", ["dept_pers_id"], name: "fk_examsheet_teacher"
  add_index "examsheet", ["dept_pers_id"], name: "unq_examsheet", unique: true

  create_table "examsheet_item", primary_key: "examsheet_item_id", force: true do |t|
    t.integer "examsheet_id",            limit: 4,  precision: 0, scale: 0,                                 null: false
    t.integer "contract_id",             limit: 4,  precision: 0, scale: 0,                                 null: false
    t.string  "surname",                 limit: 20,               scale: 0
    t.boolean "accepted",                           precision: 0, scale: 0, default: true,                  null: false
    t.integer "examsheet_item_no",       limit: 2,  precision: 0, scale: 0
    t.date    "examsheet_item_ins_date",                          scale: 0, default: '2013-10-28',          null: false
    t.time    "examsheet_item_ins_time",                          scale: 0, default: '1970-01-01 14:45:37', null: false
  end

  add_index "examsheet_item", ["contract_id"], name: "fk_examsheet_item_2"
  add_index "examsheet_item", ["contract_id"], name: "unq1_examsheet_item", unique: true
  add_index "examsheet_item", ["examsheet_id"], name: "fk_examsheet_item_1"
  add_index "examsheet_item", ["examsheet_id"], name: "unq1_examsheet_item", unique: true
  add_index "examsheet_item", ["examsheet_item_no"], name: "examsheet_item_no_idx"

  create_table "faculty", id: false, force: true do |t|
    t.integer "faculty_id",       limit: 2,  precision: 0, scale: 0,                        null: false
    t.integer "school_id",        limit: 4,                scale: 0
    t.string  "fname",            limit: 50,               scale: 0
    t.string  "faculty_code",     limit: 5,                scale: 0
    t.string  "deans_off_tel_no", limit: 20,               scale: 0
    t.string  "deans_off_fax",    limit: 20,               scale: 0
    t.string  "deans_off_aud",    limit: 7,                scale: 0
    t.string  "deans_off_eml",    limit: 50,               scale: 0
    t.date    "faculty_date",                              scale: 0, default: '2013-10-28', null: false
    t.string  "history",          limit: 1,                scale: 0
  end

  create_table "faculty_edu_form", primary_key: "faculty_edu_form_id", force: true do |t|
    t.integer "faculty_id",  limit: 2, precision: 0, scale: 0, null: false
    t.integer "edu_form_id", limit: 2, precision: 0, scale: 0, null: false
  end

  add_index "faculty_edu_form", ["edu_form_id"], name: "fk_faculty_edu_form_edu_form"
  add_index "faculty_edu_form", ["edu_form_id"], name: "unq_faculty_edu_form", unique: true
  add_index "faculty_edu_form", ["faculty_id"], name: "fk_faculty_edu_form_faculty"
  add_index "faculty_edu_form", ["faculty_id"], name: "unq_faculty_edu_form", unique: true

  create_table "fib$fields_info", primary_key: "table_name", force: true do |t|
    t.string  "field_name",     limit: 31,               scale: 0,                 null: false
    t.string  "display_label",  limit: 25,               scale: 0
    t.boolean "visible",                   precision: 0, scale: 0, default: true,  null: false
    t.string  "display_format", limit: 15,               scale: 0
    t.string  "edit_format",    limit: 15,               scale: 0
    t.boolean "triggered",                 precision: 0, scale: 0, default: false, null: false
    t.integer "display_width",  limit: 4,  precision: 0, scale: 0, default: 0
    t.integer "fib$version",    limit: 4,  precision: 0, scale: 0
  end

  create_table "fn0", id: false, force: true do |t|
    t.string  "fl",       limit: 20,               scale: 0
    t.string  "name",     limit: 20,               scale: 0
    t.integer "countsex", limit: 4,  precision: 0, scale: 0
    t.boolean "tag",                 precision: 0, scale: 0, default: true, null: false
  end

  create_table "fn1", id: false, force: true do |t|
    t.string  "fl",       limit: 20,               scale: 0
    t.string  "name",     limit: 20,               scale: 0
    t.integer "countsex", limit: 4,  precision: 0, scale: 0
    t.boolean "tag",                 precision: 0, scale: 0, default: true, null: false
  end

  create_table "gek", id: false, force: true do |t|
    t.integer "gekid",       limit: 4,  precision: 0, scale: 0, null: false
    t.integer "naborid",     limit: 4,  precision: 0, scale: 0, null: false
    t.integer "specid",      limit: 4,  precision: 0, scale: 0, null: false
    t.string  "gekname",     limit: 10,               scale: 0
    t.integer "persid",      limit: 4,  precision: 0, scale: 0
    t.integer "eduqualid",   limit: 4,  precision: 0, scale: 0
    t.date    "gstartdate",                           scale: 0
    t.date    "genddate",                             scale: 0
    t.string  "gplace",      limit: 20,               scale: 0
    t.integer "secretaryid", limit: 4,  precision: 0, scale: 0
  end

  create_table "gekmember", id: false, force: true do |t|
    t.integer "gmid",   limit: 4, precision: 0, scale: 0, null: false
    t.integer "persid", limit: 4, precision: 0, scale: 0, null: false
    t.integer "gekid",  limit: 4, precision: 0, scale: 0, null: false
    t.integer "memno",  limit: 2, precision: 0, scale: 0
  end

  create_table "golova", id: false, force: true do |t|
    t.integer "persid",    limit: 4,   precision: 0, scale: 0, null: false
    t.string  "wplace",    limit: 100,               scale: 0
    t.string  "gposition", limit: 100,               scale: 0
  end

  create_table "ibe$log_blob_fields", id: false, force: true do |t|
    t.integer "log_tables_id",  limit: 8,     precision: 18, scale: 0, null: false
    t.string  "field_name",     limit: 67,                   scale: 0, null: false
    t.string  "old_char_value", limit: 10000,                scale: 0
    t.string  "new_char_value", limit: 10000,                scale: 0
    t.binary  "old_blob_value",                              scale: 0
    t.binary  "new_blob_value",                              scale: 0
  end

  add_index "ibe$log_blob_fields", ["log_tables_id"], name: "ibe$log_blob_fields_idx1"

  create_table "ibe$log_fields", id: false, force: true do |t|
    t.integer "log_tables_id", limit: 8,  precision: 18, scale: 0, null: false
    t.string  "field_name",    limit: 67,                scale: 0, null: false
    t.string  "old_value",                               scale: 0
    t.string  "new_value",                               scale: 0
  end

  add_index "ibe$log_fields", ["log_tables_id"], name: "ibe$log_fields_idx1"

  create_table "ibe$log_keys", id: false, force: true do |t|
    t.integer "log_tables_id", limit: 8,  precision: 18, scale: 0, null: false
    t.string  "key_field",     limit: 67,                scale: 0, null: false
    t.string  "key_value",                               scale: 0
  end

  add_index "ibe$log_keys", ["log_tables_id"], name: "ibe$log_keys_idx1"

  create_table "ibe$log_tables", force: true do |t|
    t.string   "table_name", limit: 67, scale: 0, null: false
    t.string   "operation",  limit: 1,  scale: 0, null: false
    t.datetime "date_time",             scale: 0, null: false
    t.string   "user_name",  limit: 67, scale: 0, null: false
  end

  create_table "ibe$params_history", primary_key: "ibe$ph_procedure_name", force: true do |t|
    t.binary "ibe$ph_params", scale: 0
  end

  create_table "ibe$scripts", id: false, force: true do |t|
    t.string  "ibe$script_name",          limit: 64,               scale: 0,                     null: false
    t.string  "ibe$script_type",          limit: 15,               scale: 0,                     null: false
    t.text    "ibe$script_source",        limit: 8,                scale: 0
    t.binary  "ibe$script_blr",                                    scale: 0
    t.text    "ibe$script_description",   limit: 8,                scale: 0
    t.string  "ibe$script_state",         limit: 15,               scale: 0, default: "INVALID", null: false
    t.integer "ibe$script_action_id",     limit: 4,  precision: 0, scale: 0
    t.binary  "ibe$script_form",                                   scale: 0
    t.binary  "ibe$script_param_history",                          scale: 0
    t.text    "ibe$script_add_data",      limit: 8,                scale: 0
  end

  add_index "ibe$scripts", ["ibe$script_action_id"], name: "ibe$scripts_by_action_id"
  add_index "ibe$scripts", ["ibe$script_name"], name: "ibe$scripts_by_name", unique: true

  create_table "ibe$todo", primary_key: "item_id", force: true do |t|
    t.string   "object_name",        limit: 64,               scale: 0
    t.integer  "object_type",        limit: 4,  precision: 0, scale: 0
    t.integer  "item_priority",      limit: 2,  precision: 0, scale: 0, default: 0, null: false
    t.integer  "item_state",         limit: 2,  precision: 0, scale: 0, default: 0, null: false
    t.string   "item_caption",                                scale: 0,             null: false
    t.text     "item_description",   limit: 8,                scale: 0
    t.string   "responsible_person", limit: 64,               scale: 0
    t.datetime "item_timestamp",                              scale: 0,             null: false
    t.date     "item_deadline",                               scale: 0
    t.string   "item_category",      limit: 64,               scale: 0
    t.string   "item_owner",         limit: 64,               scale: 0,             null: false
  end

  add_index "ibe$todo", ["object_name"], name: "ibe$todo_by_objectname"

  create_table "ibe$version_history", primary_key: "ibe$vh_id", force: true do |t|
    t.datetime "ibe$vh_modify_date",                           scale: 0, null: false
    t.string   "ibe$vh_user_name",   limit: 67,                scale: 0
    t.integer  "ibe$vh_object_type", limit: 2,   precision: 0, scale: 0, null: false
    t.string   "ibe$vh_object_name", limit: 67,                scale: 0, null: false
    t.string   "ibe$vh_header",      limit: 320,               scale: 0
    t.binary   "ibe$vh_body",                                  scale: 0
    t.text     "ibe$vh_description", limit: 8,                 scale: 0
  end

  create_table "invitation", primary_key: "inv_id", force: true do |t|
    t.integer "inv_dept_id",  limit: 4,  precision: 0, scale: 0
    t.integer "edu_id",       limit: 4,  precision: 0, scale: 0,                                 null: false
    t.integer "cirr_item_id", limit: 4,  precision: 0, scale: 0
    t.integer "inv_user_id",  limit: 4,  precision: 0, scale: 0, default: 1,                     null: false
    t.integer "inv_sess_id",  limit: 2,  precision: 0, scale: 0
    t.string  "inv_type",     limit: 1,                scale: 0, default: "R",                   null: false
    t.string  "inv_no",       limit: 10,               scale: 0,                                 null: false
    t.date    "inv_date",                              scale: 0, default: '2013-10-28',          null: false
    t.time    "inv_time",                              scale: 0, default: '1970-01-01 14:45:38', null: false
  end

  add_index "invitation", ["cirr_item_id"], name: "cirr_item_for_invitation"
  add_index "invitation", ["edu_id"], name: "rdb$foreign30"
  add_index "invitation", ["inv_date"], name: "inv_date_idx"
  add_index "invitation", ["inv_dept_id"], name: "fk_invitation_dept"
  add_index "invitation", ["inv_sess_id"], name: "fk_invitation_sess_id"
  add_index "invitation", ["inv_type"], name: "inv_type_idx"
  add_index "invitation", ["inv_user_id"], name: "fk_invitation_user"

  create_table "lic_item", primary_key: "lic_item_id", force: true do |t|
    t.integer "license_id",            limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "speciality_id",         limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "train_level_id",        limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "edu_form_id",           limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "lic_item_graduate_qty", limit: 2, precision: 0, scale: 0, default: 0,            null: false
    t.date    "lic_item_exp_date",                             scale: 0, default: '2013-10-28', null: false
  end

  add_index "lic_item", ["edu_form_id"], name: "fk_lic_item_edu_form"
  add_index "lic_item", ["edu_form_id"], name: "unq_lic_item", unique: true
  add_index "lic_item", ["license_id"], name: "fk_lic_item_license"
  add_index "lic_item", ["license_id"], name: "unq_lic_item", unique: true
  add_index "lic_item", ["speciality_id"], name: "fk_lic_item_speciality"
  add_index "lic_item", ["speciality_id"], name: "unq_lic_item", unique: true
  add_index "lic_item", ["train_level_id"], name: "fk_lic_item_train_level"
  add_index "lic_item", ["train_level_id"], name: "unq_lic_item", unique: true

  create_table "license", primary_key: "license_id", force: true do |t|
    t.date   "license_date",             scale: 0, default: '2013-10-28', null: false
    t.date   "lic_exp_date",             scale: 0
    t.string "license_seria", limit: 5,  scale: 0
    t.string "lecense_no",    limit: 10, scale: 0
  end

  create_table "lng", primary_key: "lng_id", force: true do |t|
    t.string  "lng_code",     limit: 2,                scale: 0, default: "00", null: false
    t.integer "lng_priority", limit: 2,  precision: 0, scale: 0, default: 1,    null: false
    t.string  "lng_name",     limit: 10,               scale: 0
  end

  add_index "lng", ["lng_code"], name: "unq_lng_code", unique: true

  create_table "ministry", primary_key: "ministry_id", force: true do |t|
    t.string "ministry_name", limit: 100, scale: 0
    t.string "dp_series",     limit: 3,   scale: 0
    t.string "sc_dp_num",     limit: 1,   scale: 0
  end

  add_index "ministry", ["dp_series"], name: "unq_ministry_diplom_seria", unique: true
  add_index "ministry", ["ministry_id"], name: "xpkministry", unique: true
  add_index "ministry", ["ministry_name"], name: "unq_ministry_name", unique: true

  create_table "mn0", id: false, force: true do |t|
    t.string  "fl",       limit: 20,               scale: 0
    t.string  "name",     limit: 20,               scale: 0
    t.integer "countsex", limit: 4,  precision: 0, scale: 0
    t.boolean "tag",                 precision: 0, scale: 0, default: true, null: false
  end

  create_table "mn1", id: false, force: true do |t|
    t.string  "fl",       limit: 20,               scale: 0
    t.string  "name",     limit: 20,               scale: 0
    t.integer "countsex", limit: 4,  precision: 0, scale: 0
    t.boolean "tag",                 precision: 0, scale: 0, default: true, null: false
  end

  create_table "nabor", id: false, force: true do |t|
    t.integer "naborid",   limit: 2,  precision: 0, scale: 0,             null: false
    t.integer "naboryear", limit: 2,  precision: 0, scale: 0, default: 0, null: false
    t.integer "nabortype", limit: 4,                scale: 0
    t.string  "namboname", limit: 20,               scale: 0
  end

  create_table "name", primary_key: "name_id", force: true do |t|
    t.integer "name_qty", limit: 4, precision: 0, scale: 0
    t.boolean "name_sex",           precision: 0, scale: 0, default: true, null: false
  end

  create_table "name_lng", primary_key: "name_id", force: true do |t|
    t.integer "lng_id", limit: 2,  precision: 0, scale: 0, default: 0, null: false
    t.string  "name",   limit: 20,               scale: 0
  end

  add_index "name_lng", ["lng_id"], name: "fk_name_lng_lng"
  add_index "name_lng", ["lng_id"], name: "unq_name_lng", unique: true
  add_index "name_lng", ["name"], name: "unq_name_lng", unique: true
  add_index "name_lng", ["name_id"], name: "fk_name_lng_name"

  create_table "napryam", id: false, force: true do |t|
    t.integer "npid",  limit: 2,   precision: 0, scale: 0, null: false
    t.string  "nname", limit: 100,               scale: 0
    t.string  "ncode", limit: 6,                 scale: 0
  end

  create_table "okr", primary_key: "okr_id", force: true do |t|
    t.string  "okr_name",                 limit: 200,               scale: 0
    t.string  "short_name",               limit: 50,                scale: 0
    t.string  "rfields",                  limit: 250,               scale: 0
    t.string  "afields",                  limit: 250,               scale: 0
    t.boolean "okr_deans_office_visible",             precision: 0, scale: 0, default: true, null: false
  end

  add_index "okr", ["okr_name"], name: "unq_okr_name", unique: true
  add_index "okr", ["short_name"], name: "unq_okr_short_name", unique: true

  create_table "order_action_type", primary_key: "order_action_type_id", force: true do |t|
    t.string "order_action_type_name", limit: 50, scale: 0, null: false
  end

  add_index "order_action_type", ["order_action_type_id"], name: "xpkorder_action_type", unique: true

  create_table "order_state", primary_key: "order_state_id", force: true do |t|
    t.string "order_state_name", limit: 31, scale: 0, null: false
  end

  add_index "order_state", ["order_state_id"], name: "xpkorder_state", unique: true

  create_table "order_type", primary_key: "order_type_id", force: true do |t|
    t.string "order_type_name", limit: 31, scale: 0, null: false
  end

  add_index "order_type", ["order_type_id"], name: "xpkorder_type", unique: true

  create_table "patr", primary_key: "patr_id", force: true do |t|
    t.integer "patr_qty", limit: 4, precision: 0, scale: 0
    t.boolean "patr_sex",           precision: 0, scale: 0, default: true, null: false
  end

  create_table "patr_lng", primary_key: "patr_id", force: true do |t|
    t.integer "lng_id", limit: 2,  precision: 0, scale: 0, default: 0, null: false
    t.string  "patr",   limit: 20,               scale: 0
  end

  add_index "patr_lng", ["lng_id"], name: "fk_patr_lng_lng"
  add_index "patr_lng", ["lng_id"], name: "unq_patr_lng", unique: true
  add_index "patr_lng", ["patr"], name: "unq_patr_lng", unique: true
  add_index "patr_lng", ["patr_id"], name: "fk_patr_lng_patr"

  create_table "person", id: false, force: true do |t|
    t.integer "persid",  limit: 4,  precision: 0, scale: 0, null: false
    t.string  "lname",   limit: 20,               scale: 0
    t.string  "fname",   limit: 20,               scale: 0
    t.string  "mname",   limit: 20,               scale: 0
    t.string  "degree",  limit: 10,               scale: 0
    t.string  "pstatus", limit: 20,               scale: 0
    t.integer "ptype",   limit: 4,                scale: 0
  end

  create_table "phone_no", primary_key: "phone_no_id", force: true do |t|
    t.integer "phone_no_type_id", limit: 2, precision: 0, scale: 0, null: false
    t.integer "phone",            limit: 2, precision: 0, scale: 0
  end

  add_index "phone_no", ["phone_no_type_id"], name: "fk_phone_no_type"

  create_table "phone_no_type", primary_key: "phone_no_type_id", force: true do |t|
    t.string  "phone_no_type_name", limit: 20,               scale: 0
    t.integer "phone_no_type_pref", limit: 2,  precision: 0, scale: 0
  end

  create_table "privcard", primary_key: "card_id", force: true do |t|
    t.string  "surname",              limit: 20,                scale: 0,                                         null: false
    t.string  "name",                 limit: 20,                scale: 0,                                         null: false
    t.string  "patr",                 limit: 20,                scale: 0
    t.date    "dob",                                            scale: 0
    t.string  "job",                  limit: 100,               scale: 0
    t.integer "last_contract",        limit: 4,   precision: 0, scale: 0
    t.string  "prev_diplom",          limit: 100,               scale: 0
    t.string  "comment",              limit: 100,               scale: 0
    t.string  "khai_addr",            limit: 100,               scale: 0
    t.integer "last_agroup_id",       limit: 4,   precision: 0, scale: 0
    t.string  "old_surname",          limit: 20,                scale: 0
    t.string  "old_surn_ord_no",      limit: 20,                scale: 0
    t.boolean "sex",                              precision: 0, scale: 0, default: true,                          null: false
    t.string  "pers_doc_seria",       limit: 10,                scale: 0
    t.string  "pers_doc_num",         limit: 10,                scale: 0
    t.string  "pers_doc_out",                                   scale: 0, default: " МВ УМВС України в  області"
    t.date    "pers_doc_out_date",                              scale: 0
    t.string  "ipn",                  limit: 10,                scale: 0, default: "0"
    t.string  "last_institution",     limit: 100,               scale: 0
    t.string  "home_addr",            limit: 100,               scale: 0, default: "вул. , б. , кв. "
    t.string  "pstidx",               limit: 10,                scale: 0
    t.string  "rec_book_no",          limit: 20,                scale: 0
    t.date    "ins_date",                                       scale: 0, default: '2013-10-28',                  null: false
    t.date    "edt_date",                                       scale: 0, default: '2013-10-28',                  null: false
    t.integer "region_id",            limit: 4,   precision: 0, scale: 0
    t.integer "district_id",          limit: 4,   precision: 0, scale: 0
    t.integer "village_id",           limit: 4,   precision: 0, scale: 0
    t.string  "mob_phone",            limit: 20,                scale: 0
    t.string  "home_phone",           limit: 20,                scale: 0
    t.string  "email",                limit: 25,                scale: 0
    t.time    "ins_time",                                       scale: 0, default: '1970-01-01 14:45:39',         null: false
    t.integer "zodiac_id",            limit: 2,   precision: 0, scale: 0
    t.date    "old_surn_ord_date",                              scale: 0
    t.integer "country_id",           limit: 4,   precision: 0, scale: 0
    t.integer "privcard_ins_user_id", limit: 4,   precision: 0, scale: 0, default: 1,                             null: false
    t.time    "privcard_edt_time",                              scale: 0, default: '1970-01-01 14:45:39',         null: false
    t.string  "person_degree",        limit: 10,                scale: 0
    t.string  "person_status",        limit: 20,                scale: 0
    t.string  "person_full_name",     limit: 0,                 scale: 0
    t.string  "person_init_name",     limit: 0,                 scale: 0
  end

  add_index "privcard", ["card_id"], name: "xpkprivcard", unique: true
  add_index "privcard", ["country_id"], name: "fk_privcard_countryid"
  add_index "privcard", ["district_id"], name: "fk_privcard_district"
  add_index "privcard", ["last_contract"], name: "privcard_idx1", unique: true
  add_index "privcard", ["name"], name: "privcard_full_name"
  add_index "privcard", ["patr"], name: "privcard_full_name"
  add_index "privcard", ["region_id"], name: "fk_privcard_region"
  add_index "privcard", ["surname"], name: "privcard_full_name"
  add_index "privcard", ["village_id"], name: "fk_privcard_village"
  add_index "privcard", ["zodiac_id"], name: "fk_privcard_zodiac"

  create_table "region", force: true do |t|
    t.integer  "owner",         limit: 4,  precision: 0, scale: 0
    t.integer  "grou_",         limit: 2,  precision: 0, scale: 0
    t.string   "name",          limit: 40,               scale: 0
    t.string   "username",      limit: 20,               scale: 0
    t.datetime "lastedit",                               scale: 0, default: '2013-10-28 14:45:39'
    t.integer  "start_pstidx",  limit: 4,  precision: 0, scale: 0
    t.integer  "finish_pstidx", limit: 4,  precision: 0, scale: 0
    t.integer  "region_order",  limit: 2,  precision: 0, scale: 0, default: 0,                     null: false
    t.integer  "pstidx_qty",    limit: 8,  precision: 0, scale: 0
    t.date     "ins_date",                               scale: 0
  end

  add_index "region", ["finish_pstidx"], name: "unq_region_pstidx", unique: true
  add_index "region", ["grou_"], name: "region_idx_grou_"
  add_index "region", ["name"], name: "region_idx_name"
  add_index "region", ["name"], name: "unq_region_pstidx", unique: true
  add_index "region", ["owner"], name: "region_idx_owner"
  add_index "region", ["region_order"], name: "region_idx_region_order"
  add_index "region", ["start_pstidx"], name: "unq_region_pstidx", unique: true

  create_table "reviewer", id: false, force: true do |t|
    t.integer "persid",    limit: 4,   precision: 0, scale: 0
    t.string  "wplace",    limit: 100,               scale: 0
    t.string  "rposition", limit: 75,                scale: 0
  end

  create_table "room", primary_key: "room_id", force: true do |t|
    t.integer "dept_id",      limit: 2,   precision: 0, scale: 0, null: false
    t.integer "building_id",  limit: 2,   precision: 0, scale: 0, null: false
    t.string  "room_no",      limit: 5,                 scale: 0
    t.string  "room_name",    limit: 100,               scale: 0
    t.string  "room_full_no", limit: 10,                scale: 0
  end

  add_index "room", ["building_id"], name: "fk_room_building"
  add_index "room", ["dept_id"], name: "fk_room_dept"

  create_table "room_pers", primary_key: "room_pers_id", force: true do |t|
    t.integer "room_id",      limit: 4, precision: 0, scale: 0, null: false
    t.integer "dept_pers_id", limit: 4, precision: 0, scale: 0, null: false
  end

  add_index "room_pers", ["dept_pers_id"], name: "fk_room_pers_dept_pers"
  add_index "room_pers", ["room_id"], name: "fk_room_pers_room"

  create_table "room_phone", primary_key: "room_phone_id", force: true do |t|
    t.integer "room_id",     limit: 4, precision: 0, scale: 0, null: false
    t.integer "phone_no_id", limit: 2, precision: 0, scale: 0, null: false
  end

  add_index "room_phone", ["phone_no_id"], name: "fk_room_phone_phone_no"
  add_index "room_phone", ["phone_no_id"], name: "unq_room_phone", unique: true
  add_index "room_phone", ["room_id"], name: "fk_room_phone_room"
  add_index "room_phone", ["room_id"], name: "unq_room_phone", unique: true

  create_table "sbe_chm", primary_key: "sbe_chm_id", force: true do |t|
    t.integer "pers_id", limit: 4, precision: 0, scale: 0, null: false
  end

  add_index "sbe_chm", ["pers_id"], name: "fk_sbe_chm_1"

  create_table "school", primary_key: "school_id", force: true do |t|
    t.integer "parent_id",   limit: 2,   precision: 0, scale: 0, default: 0
    t.string  "school_name", limit: 200,               scale: 0
    t.string  "nname",       limit: 200,               scale: 0
    t.string  "zname",       limit: 200,               scale: 0
    t.string  "rname",       limit: 200,               scale: 0
    t.string  "local_name",  limit: 100,               scale: 0
    t.string  "rectorat",    limit: 50,                scale: 0
    t.string  "dir_post",    limit: 31,                scale: 0
    t.string  "dir_pib",     limit: 80,                scale: 0
    t.string  "address",     limit: 200,               scale: 0
    t.string  "resp_pib",    limit: 80,                scale: 0
    t.string  "resp_phone",  limit: 15,                scale: 0
    t.string  "resp_fax",    limit: 15,                scale: 0
    t.string  "resp_email",  limit: 100,               scale: 0
    t.string  "www",         limit: 100,               scale: 0
    t.string  "region_id",   limit: 2,                 scale: 0, default: "63",       null: false
    t.string  "ministry_id", limit: 2,                 scale: 0, default: "01",       null: false
    t.string  "district_id", limit: 10,                scale: 0, default: "63101366"
    t.integer "nztyp_id",    limit: 2,   precision: 0, scale: 0, default: 7,          null: false
    t.string  "code",        limit: 10,                scale: 0
    t.string  "bank",        limit: 100,               scale: 0
    t.string  "mfo_code",    limit: 20,                scale: 0
    t.string  "accncode",    limit: 20,                scale: 0
    t.string  "pstidx",      limit: 10,                scale: 0
    t.string  "motto",                                 scale: 0
    t.string  "npr_pib",     limit: 50,                scale: 0
    t.string  "npr_post",    limit: 50,                scale: 0
  end

  add_index "school", ["district_id"], name: "xif5school"
  add_index "school", ["ministry_id"], name: "xif4school"
  add_index "school", ["nztyp_id"], name: "xif6school"
  add_index "school", ["region_id"], name: "xif2school"
  add_index "school", ["school_id"], name: "xpkschool", unique: true

  create_table "seb", primary_key: "seb_id", force: true do |t|
    t.integer "cmp_id",           limit: 4,  precision: 0, scale: 0,                        null: false
    t.integer "train_level_id",   limit: 4,  precision: 0, scale: 0, default: 7
    t.integer "speciality_id",    limit: 4,  precision: 0, scale: 0,                        null: false
    t.integer "seb_secretary_id", limit: 4,  precision: 0, scale: 0
    t.integer "seb_chm_id",       limit: 4,  precision: 0, scale: 0
    t.string  "seb_name",         limit: 10,               scale: 0, default: "ДЕК"
    t.date    "seb_start_date",                            scale: 0, default: '2013-10-28'
    t.date    "seb_finish_date",                           scale: 0, default: '2013-10-28'
    t.string  "seb_room",         limit: 20,               scale: 0
  end

  add_index "seb", ["cmp_id"], name: "fk_seb_cmp"
  add_index "seb", ["seb_chm_id"], name: "fk_seb_chm"
  add_index "seb", ["seb_secretary_id"], name: "fk_seb_secretary"
  add_index "seb", ["speciality_id"], name: "fk_seb_speciality"

  create_table "seb_chm", primary_key: "card_id", force: true do |t|
    t.string "chm_work_place", limit: 100, scale: 0
    t.string "chm_position",   limit: 100, scale: 0
  end

  add_index "seb_chm", ["card_id"], name: "fk_seb_chm_privcard"

  create_table "seb_member", primary_key: "seb_member_id", force: true do |t|
    t.integer "card_id",       limit: 4, precision: 0, scale: 0, null: false
    t.integer "seb_id",        limit: 4, precision: 0, scale: 0, null: false
    t.integer "seb_member_no", limit: 2, precision: 0, scale: 0
  end

  add_index "seb_member", ["card_id"], name: "fk_seb_member_card"
  add_index "seb_member", ["seb_id"], name: "fk_seb_member_seb"

  create_table "semestr", primary_key: "sess_id", force: true do |t|
    t.integer "smstr_type_id", limit: 2, precision: 0, scale: 0, default: 1, null: false
    t.integer "smstr_course",  limit: 8, precision: 0, scale: 0
  end

  add_index "semestr", ["smstr_type_id"], name: "fk_semestr_smstr_type"

  create_table "sess", primary_key: "cmp_id", force: true do |t|
    t.integer "sess_id",        limit: 2,  precision: 0, scale: 0,                        null: false
    t.integer "ayear_id",       limit: 2,  precision: 0, scale: 0,                        null: false
    t.string  "semestr_name",   limit: 15,               scale: 0, default: "-й семестр", null: false
    t.date    "su_sess_start",                           scale: 0
    t.date    "su_sess_finish",                          scale: 0
    t.integer "su_sess_dur",    limit: 8,  precision: 0, scale: 0
    t.date    "tp_sess_start",                           scale: 0
    t.date    "tp_sess_finish",                          scale: 0
    t.integer "tp_sess_dur",    limit: 8,  precision: 0, scale: 0
    t.string  "sess_type",      limit: 1,                scale: 0, default: "C",          null: false
    t.boolean "inc_in_card",               precision: 0, scale: 0, default: true,         null: false
    t.boolean "flg_active",                precision: 0, scale: 0, default: true,         null: false
    t.integer "block_days",     limit: 2,  precision: 0, scale: 0, default: 10
    t.integer "course",         limit: 8,  precision: 0, scale: 0
  end

  add_index "sess", ["ayear_id"], name: "fk_sess_ayear"
  add_index "sess", ["cmp_id"], name: "fk_sess_1"
  add_index "sess", ["sess_id"], name: "fk_sess_sess"

  create_table "sess_result", primary_key: "sess_result_id", force: true do |t|
    t.integer "cmp_id",               limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "sess_id",              limit: 2, precision: 0, scale: 0,                        null: false
    t.date    "sess_result_date",                             scale: 0, default: '2013-10-28', null: false
    t.integer "stu_count",            limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "stu_in_academ",        limit: 2, precision: 0, scale: 0,                        null: false
    t.float   "must_sit_exam",        limit: 4,               scale: 0,                        null: false
    t.integer "accepted_to_exam",     limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "not_come_good_reason", limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "not_come_wo_greason",  limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "turn_over_excell",     limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "turn_over_good",       limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "turn_over_mixed",      limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "turn_over_fair",       limit: 2, precision: 0, scale: 0,                        null: false
    t.float   "turn_over_total",      limit: 4,               scale: 0,                        null: false
    t.integer "uns1",                 limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "uns2",                 limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "uns3",                 limit: 2, precision: 0, scale: 0,                        null: false
    t.integer "uns_total",            limit: 2, precision: 0, scale: 0,                        null: false
    t.float   "abs_progress",         limit: 4,               scale: 0,                        null: false
  end

  add_index "sess_result", ["cmp_id"], name: "r_87"
  add_index "sess_result", ["cmp_id"], name: "xif2sess_result"
  add_index "sess_result", ["sess_id"], name: "fk_sess_result_sess"
  add_index "sess_result", ["sess_id"], name: "xif1sess_result"
  add_index "sess_result", ["sess_result_id"], name: "xpksess_result", unique: true

  create_table "sess_result_item", primary_key: "sess_result_item_id", force: true do |t|
    t.integer "sess_result_id",       limit: 4, precision: 0, scale: 0, null: false
    t.integer "agroup_id",            limit: 4, precision: 0, scale: 0, null: false
    t.integer "stu_count",            limit: 2, precision: 0, scale: 0, null: false
    t.integer "stu_in_academ",        limit: 2, precision: 0, scale: 0, null: false
    t.float   "must_sit_exam",        limit: 4,               scale: 0, null: false
    t.integer "accepted_to_exam",     limit: 2, precision: 0, scale: 0, null: false
    t.integer "not_come_good_reason", limit: 2, precision: 0, scale: 0, null: false
    t.integer "not_come_wo_greason",  limit: 2, precision: 0, scale: 0, null: false
    t.integer "turn_over_excell",     limit: 2, precision: 0, scale: 0, null: false
    t.integer "turn_over_good",       limit: 2, precision: 0, scale: 0, null: false
    t.integer "turn_over_mixed",      limit: 2, precision: 0, scale: 0, null: false
    t.integer "turn_over_fair",       limit: 2, precision: 0, scale: 0, null: false
    t.float   "turn_over_total",      limit: 4,               scale: 0, null: false
    t.integer "uns1",                 limit: 2, precision: 0, scale: 0, null: false
    t.integer "uns2",                 limit: 2, precision: 0, scale: 0, null: false
    t.integer "uns3",                 limit: 2, precision: 0, scale: 0, null: false
    t.integer "uns_total",            limit: 2, precision: 0, scale: 0, null: false
    t.float   "abs_progress",         limit: 4,               scale: 0, null: false
  end

  add_index "sess_result_item", ["agroup_id"], name: "r_159"
  add_index "sess_result_item", ["agroup_id"], name: "xif2sess_result_item"
  add_index "sess_result_item", ["sess_result_id"], name: "fk_sess_result_item_sess_result"
  add_index "sess_result_item", ["sess_result_id"], name: "xif1sess_result_item"
  add_index "sess_result_item", ["sess_result_item_id"], name: "xpksess_result_item", unique: true

  create_table "sgroup", id: false, force: true do |t|
    t.integer "grid",      limit: 4, precision: 0, scale: 0, null: false
    t.integer "naborid",   limit: 4, precision: 0, scale: 0, null: false
    t.integer "specid",    limit: 2, precision: 0, scale: 0, null: false
    t.integer "eduqualid", limit: 2, precision: 0, scale: 0
    t.string  "gname",     limit: 0,               scale: 0
  end

  create_table "smstr_type", primary_key: "smstr_type_id", force: true do |t|
    t.string "smstr_type_name", limit: 10, scale: 0
  end

  create_table "spec", primary_key: "spec_id", force: true do |t|
    t.string  "spec_no",       limit: 6,                 scale: 0
    t.string  "spec_name",     limit: 100,               scale: 0,                        null: false
    t.integer "stu_qty_lic",   limit: 2,   precision: 0, scale: 0, default: 0,            null: false
    t.integer "stu_qty_now",   limit: 2,   precision: 0, scale: 0, default: 0,            null: false
    t.date    "spec_ins_date",                           scale: 0, default: '2013-10-28', null: false
    t.date    "spec_edt_date",                           scale: 0, default: '2013-10-28', null: false
  end

  add_index "spec", ["spec_name"], name: "unq1_spec", unique: true
  add_index "spec", ["spec_no"], name: "unq1_spec", unique: true

  create_table "speciality", primary_key: "speciality_id", force: true do |t|
    t.integer "spec_id",              limit: 2,   precision: 0,  scale: 0,                 null: false
    t.integer "dept_id",              limit: 2,   precision: 0,  scale: 0
    t.integer "start_train_level_id", limit: 2,   precision: 0,  scale: 0, default: 6,     null: false
    t.integer "start_ayear_id",       limit: 2,   precision: 0,  scale: 0,                 null: false
    t.string  "speciality_no",        limit: 8,                  scale: 0,                 null: false
    t.string  "speciality_name",      limit: 100,                scale: 0,                 null: false
    t.string  "speciality_alpha",     limit: 1,                  scale: 0
    t.string  "speciality_beta",      limit: 3,                  scale: 0
    t.decimal "smstr_edu_cost",                   precision: 12, scale: 4, default: 500.0, null: false
    t.integer "stu_qty_lic",          limit: 2,   precision: 0,  scale: 0, default: 0,     null: false
    t.integer "stu_qty_now",          limit: 2,   precision: 0,  scale: 0, default: 0,     null: false
    t.integer "next_speciality_id",   limit: 4,   precision: 0,  scale: 0
  end

  add_index "speciality", ["dept_id"], name: "fk_speciality"
  add_index "speciality", ["spec_id"], name: "rdb$foreign31"
  add_index "speciality", ["speciality_name"], name: "unq_speciality_name", unique: true
  add_index "speciality", ["speciality_no"], name: "unq_speciality_no", unique: true
  add_index "speciality", ["start_ayear_id"], name: "fk_speciality_2"
  add_index "speciality", ["start_ayear_id"], name: "unq_speciality_name", unique: true
  add_index "speciality", ["start_ayear_id"], name: "unq_speciality_no", unique: true
  add_index "speciality", ["start_train_level_id"], name: "fk_speciality_1"

  create_table "speciality_lng", primary_key: "speciality_id", force: true do |t|
    t.integer "lng_id",          limit: 2,  precision: 0, scale: 0, null: false
    t.string  "speciality_name", limit: 50,               scale: 0
  end

  add_index "speciality_lng", ["lng_id"], name: "fk_speciality_lng_lng"
  add_index "speciality_lng", ["lng_id"], name: "unq_speciality_lng", unique: true
  add_index "speciality_lng", ["speciality_id"], name: "fk_speciality_lng_speciality"
  add_index "speciality_lng", ["speciality_name"], name: "unq_speciality_lng", unique: true

  create_table "student", id: false, force: true do |t|
    t.string  "lname",         limit: 20,               scale: 0
    t.string  "fname",         limit: 20,               scale: 0
    t.string  "mname",         limit: 20,               scale: 0
    t.string  "course",        limit: 27,               scale: 0
    t.string  "speciality_no", limit: 15,               scale: 0
    t.string  "country_name",  limit: 40,               scale: 0
    t.integer "grid",          limit: 4,  precision: 0, scale: 0, null: false
    t.integer "studid",        limit: 4,  precision: 0, scale: 0, null: false
    t.integer "cmp_id",        limit: 2,  precision: 0, scale: 0, null: false
  end

  create_table "subj", primary_key: "subj_id", force: true do |t|
    t.string "subj_name", limit: 100, scale: 0,                                 null: false
    t.date   "ins_date",              scale: 0, default: '2013-10-28',          null: false
    t.time   "ins_time",              scale: 0, default: '1970-01-01 14:45:40', null: false
  end

  add_index "subj", ["subj_id"], name: "xpksubj", unique: true
  add_index "subj", ["subj_name"], name: "unq_subj_name", unique: true

  create_table "subj_lng", primary_key: "subj_id", force: true do |t|
    t.integer "lng_id",    limit: 2,  precision: 0, scale: 0, null: false
    t.string  "subj_name", limit: 80,               scale: 0
  end

  add_index "subj_lng", ["lng_id"], name: "fk_subj_lng_lng"
  add_index "subj_lng", ["lng_id"], name: "unq_subj_lng", unique: true
  add_index "subj_lng", ["subj_id"], name: "fk_subj_lng_subj"
  add_index "subj_lng", ["subj_name"], name: "unq_subj_lng", unique: true

  create_table "surname", primary_key: "surname_id", force: true do |t|
    t.integer "surname_qty", limit: 4, precision: 0, scale: 0, default: 0
    t.boolean "surname_sex",           precision: 0, scale: 0, default: false, null: false
  end

  create_table "surname_lng", primary_key: "lng_id", force: true do |t|
    t.integer "surname_id", limit: 4,  precision: 0, scale: 0, null: false
    t.string  "surname",    limit: 20,               scale: 0
  end

  add_index "surname_lng", ["lng_id"], name: "fk_surname_lng_lng"
  add_index "surname_lng", ["lng_id"], name: "unq_surname_lng", unique: true
  add_index "surname_lng", ["surname"], name: "unq_surname_lng", unique: true
  add_index "surname_lng", ["surname_id"], name: "fk_surname_lng_surname"

  create_table "swork", id: false, force: true do |t|
    t.integer "workid",        limit: 4,   precision: 0, scale: 0,                null: false
    t.integer "studid",        limit: 4,   precision: 0, scale: 0,                null: false
    t.integer "wtypeid",       limit: 2,   precision: 0, scale: 0
    t.integer "gekid",         limit: 4,   precision: 0, scale: 0
    t.integer "mark",          limit: 2,   precision: 0, scale: 0, default: 0,    null: false
    t.boolean "isexelent",                 precision: 0, scale: 0, default: true, null: false
    t.date    "defdate",                                 scale: 0
    t.string  "wtheme",        limit: 250,               scale: 0
    t.integer "rukid",         limit: 4,   precision: 0, scale: 0
    t.integer "revid",         limit: 4,   precision: 0, scale: 0
    t.integer "protocol_no",   limit: 2,   precision: 0, scale: 0
    t.integer "hundred_score", limit: 2,   precision: 0, scale: 0
    t.string  "ects_score",    limit: 3,                 scale: 0
  end

  create_table "teacher", id: false, force: true do |t|
    t.integer "card_id",    limit: 4,  precision: 0, scale: 0, null: false
    t.integer "teacher_id", limit: 4,  precision: 0, scale: 0, null: false
    t.integer "dept_id",    limit: 2,  precision: 0, scale: 0, null: false
    t.string  "surname",    limit: 20,               scale: 0
    t.string  "name",       limit: 20,               scale: 0
    t.string  "patr",       limit: 20,               scale: 0
    t.string  "full_name",  limit: 0,                scale: 0
  end

  create_table "topic", id: false, force: true do |t|
    t.integer "topicid", limit: 4,  precision: 0, scale: 0
    t.string  "tname",   limit: 30,               scale: 0
    t.integer "tnum",    limit: 2,  precision: 0, scale: 0
  end

  create_table "tposition", id: false, force: true do |t|
    t.integer "tposid",    limit: 2,  precision: 0, scale: 0, null: false
    t.string  "tposname",  limit: 20,               scale: 0
    t.string  "tposshort", limit: 10,               scale: 0
  end

  create_table "train_level", primary_key: "train_level_id", force: true do |t|
    t.string "train_level_name",       limit: 20, scale: 0, null: false
    t.string "train_level_short_name", limit: 2,  scale: 0, null: false
    t.text   "train_level_desc",       limit: 8,  scale: 0
  end

  add_index "train_level", ["train_level_name"], name: "unq_train_level_name", unique: true
  add_index "train_level", ["train_level_short_name"], name: "unq_train_level_short_name", unique: true

  create_table "train_level_lng", primary_key: "train_level_id", force: true do |t|
    t.integer "lng_id",                 limit: 2,  precision: 0, scale: 0, null: false
    t.string  "train_level_name",       limit: 20,               scale: 0
    t.string  "train_level_short_name", limit: 2,                scale: 0
    t.text    "train_level_desc",       limit: 8,                scale: 0
  end

  add_index "train_level_lng", ["lng_id"], name: "fk_train_level_lng_lng"
  add_index "train_level_lng", ["train_level_id"], name: "fk_train_level_lng_train_level"

  create_table "training_cycle", primary_key: "training_cycle_id", force: true do |t|
    t.string  "training_cycle_name", limit: 100,               scale: 0, null: false
    t.integer "owner",               limit: 2,   precision: 0, scale: 0
  end

  add_index "training_cycle", ["owner"], name: "fk_training_cycle_owner"
  add_index "training_cycle", ["training_cycle_name"], name: "unq_training_cycle_name", unique: true

  create_table "training_cycle_subj", primary_key: "training_cycle_subj", force: true do |t|
    t.integer "subj_id",           limit: 2, precision: 0, scale: 0, null: false
    t.integer "training_cycle_id", limit: 2, precision: 0, scale: 0, null: false
  end

  add_index "training_cycle_subj", ["subj_id"], name: "fk_training_cycle_subj_subj"
  add_index "training_cycle_subj", ["subj_id"], name: "unq_training_cycle_subj", unique: true
  add_index "training_cycle_subj", ["training_cycle_id"], name: "fk_training_cycle_subj_tc"
  add_index "training_cycle_subj", ["training_cycle_id"], name: "unq_training_cycle_subj", unique: true

  create_table "tutor_full", id: false, force: true do |t|
    t.integer "persid",      limit: 4,   precision: 0, scale: 0, null: false
    t.string  "pos_on_caf",  limit: 124,               scale: 0
    t.string  "spos_on_caf", limit: 84,                scale: 0
    t.string  "pstatus",     limit: 20,                scale: 0
    t.string  "degree",      limit: 10,                scale: 0
    t.string  "lname",       limit: 20,                scale: 0
    t.string  "fname",       limit: 20,                scale: 0
    t.string  "mname",       limit: 20,                scale: 0
    t.string  "tposname",    limit: 20,                scale: 0
    t.string  "tpossname",   limit: 10,                scale: 0
    t.integer "cafnum",      limit: 2,   precision: 0, scale: 0, null: false
    t.integer "cafid",       limit: 2,   precision: 0, scale: 0, null: false
    t.integer "tposid",      limit: 2,   precision: 0, scale: 0, null: false
  end

  create_table "user_group", primary_key: "user_group_id", force: true do |t|
    t.integer "user_type_id", limit: 2, precision: 0, scale: 0, null: false
    t.integer "user_list_id", limit: 4, precision: 0, scale: 0, null: false
  end

  add_index "user_group", ["user_list_id"], name: "fk_user_group_user_list"
  add_index "user_group", ["user_type_id"], name: "fk_user_group_user_type"

  create_table "user_list", primary_key: "user_list_id", force: true do |t|
    t.integer "card_id",            limit: 4,  precision: 0, scale: 0,                        null: false
    t.string  "user_list_name",     limit: 20,               scale: 0,                        null: false
    t.string  "full_name",          limit: 40,               scale: 0
    t.boolean "activ",                         precision: 0, scale: 0, default: true,         null: false
    t.integer "rights",             limit: 4,  precision: 0, scale: 0
    t.string  "passwrd",            limit: 40,               scale: 0
    t.integer "appsmask",           limit: 4,  precision: 0, scale: 0, default: 0
    t.binary  "photo",                                       scale: 0
    t.binary  "subscribe",                                   scale: 0
    t.string  "user_name",          limit: 20,               scale: 0
    t.date    "lastedit",                                    scale: 0, default: '2013-10-28', null: false
    t.date    "user_list_ins_date",                          scale: 0, default: '2013-10-28', null: false
  end

  add_index "user_list", ["card_id"], name: "fk_user_list_privcard"
  add_index "user_list", ["user_list_name"], name: "user_list_name", unique: true

  create_table "user_list_cmp_speciality", primary_key: "user_list_cmp_speciality_id", force: true do |t|
    t.integer "user_list_id",       limit: 4, precision: 0, scale: 0,                 null: false
    t.integer "cmp_speciality_id",  limit: 4, precision: 0, scale: 0,                 null: false
    t.boolean "cmp_speciality_sel",           precision: 0, scale: 0, default: true,  null: false
    t.boolean "cmp_speciality_ins",           precision: 0, scale: 0, default: false, null: false
    t.boolean "cmp_speciality_upd",           precision: 0, scale: 0, default: false, null: false
    t.boolean "cmp_speciality_del",           precision: 0, scale: 0, default: false, null: false
  end

  add_index "user_list_cmp_speciality", ["cmp_speciality_id"], name: "fk_user_list_cmp_speciality_2"
  add_index "user_list_cmp_speciality", ["cmp_speciality_id"], name: "unq1_user_list_cmp_speciality", unique: true
  add_index "user_list_cmp_speciality", ["user_list_id"], name: "fk_user_list_cmp_speciality_1"
  add_index "user_list_cmp_speciality", ["user_list_id"], name: "unq1_user_list_cmp_speciality", unique: true

  create_table "user_privcard", primary_key: "user_privcard_id", force: true do |t|
    t.integer "user_list_id",           limit: 4, precision: 0, scale: 0,                                 null: false
    t.integer "privcard_id",            limit: 4, precision: 0, scale: 0,                                 null: false
    t.boolean "user_privcard_mark",               precision: 0, scale: 0, default: false,                 null: false
    t.date    "user_privcard_ins_date",                         scale: 0, default: '2013-10-28',          null: false
    t.time    "user_privcard_ins_time",                         scale: 0, default: '1970-01-01 14:45:41', null: false
    t.date    "user_privcard_edt_date",                         scale: 0, default: '2013-10-28',          null: false
    t.time    "user_privcard_edt_time",                         scale: 0, default: '1970-01-01 14:45:41', null: false
    t.boolean "rec_book_present",                 precision: 0, scale: 0, default: true,                  null: false
  end

  add_index "user_privcard", ["privcard_id"], name: "fk_user_privcard_2"
  add_index "user_privcard", ["user_list_id"], name: "fk_user_privcard_1"

  create_table "user_sess_payment", primary_key: "user_sess_payment_id", force: true do |t|
    t.integer "sess_id",          limit: 2, precision: 0, scale: 0,                                 null: false
    t.integer "user_privcard_id", limit: 4, precision: 0, scale: 0,                                 null: false
    t.boolean "paid",                       precision: 0, scale: 0, default: false,                 null: false
    t.date    "usp_ins_date",                             scale: 0, default: '2013-10-28',          null: false
    t.time    "usp_ins_time",                             scale: 0, default: '1970-01-01 14:45:41', null: false
    t.date    "usp_edt_date",                             scale: 0, default: '2013-10-28',          null: false
    t.time    "usp_edt_time",                             scale: 0, default: '1970-01-01 14:45:41', null: false
  end

  add_index "user_sess_payment", ["sess_id"], name: "fk_user_sess_payment_sess"
  add_index "user_sess_payment", ["sess_id"], name: "unq_user_sess_payment", unique: true
  add_index "user_sess_payment", ["user_privcard_id"], name: "fk_user_sess_payment_1"
  add_index "user_sess_payment", ["user_privcard_id"], name: "unq_user_sess_payment", unique: true

  create_table "user_sess_work", primary_key: "user_sess_work_id", force: true do |t|
    t.integer "contract_cntrl_id", limit: 4, precision: 0, scale: 0,                null: false
    t.boolean "paid",                        precision: 0, scale: 0, default: true, null: false
  end

  add_index "user_sess_work", ["contract_cntrl_id"], name: "fk_user_sess_work_1"

  create_table "user_type", primary_key: "user_type_id", force: true do |t|
    t.string "user_type_name", limit: 31, scale: 0
  end

  create_table "v_cirriculum", id: false, force: true do |t|
    t.integer "cirr_item_id",  limit: 4,   precision: 0, scale: 0,                null: false
    t.integer "speciality_id", limit: 2,   precision: 0, scale: 0,                null: false
    t.integer "sess_id",       limit: 2,   precision: 0, scale: 0,                null: false
    t.integer "subj_id",       limit: 2,   precision: 0, scale: 0,                null: false
    t.integer "qty_hours",     limit: 2,   precision: 0, scale: 0, default: 0,    null: false
    t.integer "control_type",  limit: 2,   precision: 0, scale: 0, default: 0,    null: false
    t.string  "subj_name",     limit: 100,               scale: 0
    t.boolean "inc_in_card",               precision: 0, scale: 0, default: true, null: false
    t.integer "cmp_id",        limit: 2,   precision: 0, scale: 0,                null: false
    t.integer "dept_id",       limit: 2,   precision: 0, scale: 0,                null: false
  end

  create_table "v_semestr", id: false, force: true do |t|
    t.integer "semestr_id",    limit: 2,  precision: 0, scale: 0, null: false
    t.integer "cmp_id",        limit: 4,  precision: 0, scale: 0, null: false
    t.string  "full_sem_name", limit: 43,               scale: 0
    t.string  "cmp_name",      limit: 50,               scale: 0
  end

  create_table "v_sesscirriculum", id: false, force: true do |t|
    t.integer "cirr_item_id",  limit: 4,   precision: 0, scale: 0,             null: false
    t.integer "speciality_id", limit: 2,   precision: 0, scale: 0,             null: false
    t.integer "sess_id",       limit: 2,   precision: 0, scale: 0,             null: false
    t.integer "subj_id",       limit: 2,   precision: 0, scale: 0,             null: false
    t.integer "qty_hours",     limit: 2,   precision: 0, scale: 0, default: 0, null: false
    t.integer "control_type",  limit: 2,   precision: 0, scale: 0, default: 0, null: false
    t.string  "subj_name",     limit: 100,               scale: 0
    t.string  "teacher_name",  limit: 248,               scale: 0
    t.integer "dept_id",       limit: 2,   precision: 0, scale: 0,             null: false
  end

  create_table "work_topic", id: false, force: true do |t|
    t.integer "wtid",    limit: 4, precision: 0, scale: 0
    t.integer "workid",  limit: 4, precision: 0, scale: 0
    t.integer "persid",  limit: 4, precision: 0, scale: 0
    t.integer "topicid", limit: 4, precision: 0, scale: 0
  end

  create_table "worktype", id: false, force: true do |t|
    t.integer "wtypeid", limit: 4,  precision: 0, scale: 0
    t.string  "wname",   limit: 75,               scale: 0
    t.string  "prefix",  limit: 1,                scale: 0
  end

  create_table "zodiac", primary_key: "zodiac_id", force: true do |t|
    t.date "start_date",  scale: 0, default: '2013-10-28', null: false
    t.date "finish_date", scale: 0, default: '2013-10-28', null: false
  end

end
