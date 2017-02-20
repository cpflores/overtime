# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "4143644544")
puts "1 User created"

AdminUser.create(email: "admin@test.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Admin",
                 last_name: "Name",
                 phone: "4143644544")
puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today,
               rationale: "#{post} rationale content Lomo tattooed tilde, ramps hot chicken hashtag squid. Chicharrones XOXO cold-pressed, flexitarian paleo authentic celiac pickled kickstarter neutra coloring book flannel. Ugh fashion axe seitan put a bird on it, flannel raw denim jean shorts selfies. Direct trade literally intelligentsia, kinfolk crucifix aesthetic squid health goth etsy. Tote bag jean shorts fam letterpress pitchfork, subway tile scenester disrupt dreamcatcher plaid retro vaporware photo booth ethical bushwick. Tousled pabst distillery mustache letterpress taxidermy. Sartorial lyft four loko, farm-to-table disrupt unicorn pug man braid selvage tofu.",
               user_id: @user.id,
               overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id,
                   status: 0,
                   start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"
