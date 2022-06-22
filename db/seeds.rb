# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    email: 'quiz@quiz',
    password: '999999',
)

Member.create!(
    name: 'tester',
    email: 'test@test',
    password: 'testing',
    password_confirmation: 'testing'
)