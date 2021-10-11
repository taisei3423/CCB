# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(account: 's20191424', password: 2766, schoolyear: 3, username: '錦織太成', nickname: 'じゃがいも')
User.create(account: 's20191415', password: 3504, schoolyear: 3, username: '佐藤祐介', nickname: '主将')

Boardtype.create(threadname: '公務員')
Boardtype.create(threadname: '就職（製造業）')
Boardtype.create(threadname: '就職（事務職）')
Boardtype.create(threadname: '就職（ＩＴ系）')
Boardtype.create(threadname: '就職（小売業）')
Boardtype.create(threadname: '進学全体')
Boardtype.create(threadname: '短期大学')
Boardtype.create(threadname: '四年制大学')
Boardtype.create(threadname: '専門学校（医療系）')
Boardtype.create(threadname: '専門学校（情報系）')
Boardtype.create(threadname: '専門学校（ビジネス・語学系）')
Boardtype.create(threadname: '専門学校（美容・栄養系）')
Boardtype.create(threadname: '専門学校（その他）')
Boardtype.create(threadname: '大学（国公立）')
Boardtype.create(threadname: '大学（私立）')