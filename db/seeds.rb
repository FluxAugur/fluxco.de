# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.new(
  email: ENV['ADMIN_EMAIL'],
  first_name: ENV['ADMIN_FIRST_NAME'],
  last_name: ENV['ADMIN_LAST_NAME'],
  roles: ['admin'],
  password: ENV['ADMIN_PASSWORD'],
  password_confirmtion: ENV['ADMIN_PASSWORD']
)
admin.skip_confirmation!
admin.save!