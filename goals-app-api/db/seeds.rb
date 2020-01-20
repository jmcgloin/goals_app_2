# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jason = User.create(username: 'Jason', email: 'j@j.com', password: 'woaiziyu')
jason2 = User.create(username: 'Jason', email: 'j@j.com', password: 'woaiziyu')

g1 = Goal.create(goalname: 'Play trumpet', completed: false, goal_date: '2020-06-30', user: jason, importance: 5, description: 'Play notes from low g to high c clearly.  Play "Throne Room" completely and clearly')
s1 = Step.create(stepname: 'Chicowitz', goal: g1, description: 'Play all of Chicowitz clearly', metric: 'Play all of Chicowitz clearly', minutes: 600)
s2 = Step.create(stepname: 'Throne Room', goal: g1, description: 'Play "Throne Room" completely and clearly', metric: 'Play "Throne Room" completely and clearly', minutes: 1000)



# create_table "goals", force: :cascade do |t|
#     t.string "goalname"
#     t.boolean "completed"
#     t.date "goal_date"
#     t.integer "user_id"
#     t.integer "importance"
#     t.string "description"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end


#   create_table "steps", force: :cascade do |t|
#     t.integer "goal_id"
#     t.string "stepname"
#     t.string "description"
#     t.string "metric"
#     t.integer "miutes"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "email", default: "", null: false
#     t.string "encrypted_password", default: "", null: false
#     t.string "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.string "username"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["email"], name: "index_users_on_email", unique: true
#     t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   end