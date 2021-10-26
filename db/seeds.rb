# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

User.create(account: 's20191424', password: 2766, schoolyear: 3, username: '錦織太成', nickname: 'じゃがいも')
User.create(account: 's20191415', password: 3504, schoolyear: 3, username: '佐藤祐介', nickname: '主将')
User.create(account: 's20191403', password: 3845, schoolyear: 3, username: '井上文杏希', nickname: 'ニンニク')
User.create(account: 's20191431', password: 3176, schoolyear: 3, username: '福山沙奈', nickname: 'ぽてと')

CSV.foreach('db/course2.csv') do |row|
  Course.create(:name => row[0], :kinds => row[1], :year => row[2], :contents => row[3], :remarks => row[4])
end

CSV.foreach('db/middle.csv') do |row|
  Middle.create(:course_id => row[0], :kubun_id => row[1])
end

CSV.foreach('db/kubun2.csv') do |row|
  Kubun.create(:code => row[0], :name => row[1])
end