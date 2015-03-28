# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new
user.email = 'test@example.com'
user.password = 'password'
user.password_confirmation = 'password'
user.save!

user2 = User.new
user2.email = 'test2@example.com'
user2.password = 'password'
user2.password_confirmation = 'password'
user2.save!

Message.create(from: 'test@example.com', to_user: 'test2@example.com', subject: 'Test Subject', body: 'Test Body')
Message.create(from: 'test2@example.com', to_user: 'test@example.com', subject: 'Test Subject 2', body: 'Test Body 2')
