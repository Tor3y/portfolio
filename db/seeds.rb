# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
 users = User.create([{ email: 'email', password: '1234' }])
 User.create(email: 'torey@tor3y.com', password: 123456, is_admin: true)
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
