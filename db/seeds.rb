# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.where(:name => role).first_or_create
  puts 'role: ' << role
end
puts 'ADMIN USER'
admin = User.find_or_create_by(
  :email => ENV['ADMIN_EMAIL'].dup,
  :name => ENV['ADMIN_FIRST_NAME'].dup << ENV['ADMIN_LAST_NAME'].dup,
  :first_name => ENV['ADMIN_FIRST_NAME'].dup,
  :last_name => ENV['ADMIN_LAST_NAME'].dup,
  :password => ENV['ADMIN_PASSWORD'].dup,
  :password_confirmation => ENV['ADMIN_PASSWORD'].dup
)
puts 'admin: ' << admin.name
admin.add_role :admin
admin.skip_confirmation!
admin.save!