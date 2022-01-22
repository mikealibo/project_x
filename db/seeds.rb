# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Role.count == 0
  super_admin = Role.new(name: "Super Admin", code: "super_admin")
  super_admin.save!
  puts "Super Admin Role has been created"

  admin = Role.new(name: "Admin", code: "admin")
  admin.save!
  puts "Admin Role has been created"

  member = Role.new(name: "Member", code: "member")
  member.save!
  puts "Member Role has been created"
end

if User.count == 0

  super_admin = User.new(email: 'super_admin@projectx.com', first_name: 'Bruce', last_name: 'Wayne', password: 'P@$$W0rd', password_confirmation: "P@$$W0rd", created_at: DateTime.now, updated_at: DateTime.now)
  super_admin.save!
  super_admin.roles << Role.find_by_code("super_admin")
  puts "Super Admin account has been created"

  admin = User.new(email: 'admin@projectx.com', first_name: 'Clark', last_name: 'Kent', password: 'P@$$W0rd', password_confirmation: "P@$$W0rd", created_at: DateTime.now, updated_at: DateTime.now)
  admin.save!
  admin.roles << Role.find_by_code("admin")
  puts "Admin account has been created"

  member = User.new(email: 'member@projectx.com', first_name: 'Diana', last_name: 'Prince', password: 'P@$$W0rd', password_confirmation: "P@$$W0rd", created_at: DateTime.now, updated_at: DateTime.now)
  member.save!
  member.roles << Role.find_by_code("member")
  puts "Member account has been created"

end

