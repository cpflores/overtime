@employee = Employee.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Scott",
                    last_name: "Summers",
                    phone: "4143644544",
                    ssn: 1234,
                    company: "Uncanny X-Men")
puts "1 employee created"

AdminUser.create(email: "chadwickflores@gmail.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Chad",
                 last_name: "Flores",
                 phone: "4143644544",
                 ssn: 1234,
                 company: "Levitate Strategies")
puts "1 Admin User created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today,
               work_performed: "#{post} work performed Lomo tattooed tilde, ramps hot chicken hashtag squid. Chicharrones XOXO cold-pressed, flexitarian paleo authentic celiac pickled kickstarter neutra coloring book flannel. Ugh fashion axe seitan put a bird on it, flannel raw denim jean shorts selfies. Direct trade literally intelligentsia, kinfolk crucifix aesthetic squid health goth etsy. Tote bag jean shorts fam letterpress pitchfork, subway tile scenester disrupt dreamcatcher plaid retro vaporware photo booth ethical bushwick. Tousled pabst distillery mustache letterpress taxidermy. Sartorial lyft four loko, farm-to-table disrupt unicorn pug man braid selvage tofu.",
               user_id: @employee.id,
               daily_hours: 12.5)
end

puts "100 Posts have been created"
