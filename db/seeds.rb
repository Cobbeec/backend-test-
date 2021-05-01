# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 4/7/21 = Day.create(date: 4/7/21)
# 4/6/21 = Day.create(date: 4/6/21)
# 4/21/21 = Day.create(date: 4/21/21)
# 4/1/21 = Day.create(date: 4/1/21)
# # 5/1/21 = Day.create(date 5/1/21)

# Day.create(date: 4/7/21)

# Task.create(name: "Walk Birdie", description: "Walking my dog") 

Monday = Day.create(name: 'Monday')
Tuesday = Day.create(name: 'Tuesday')


Task.create([
    {name: 'Walk Birdie', description: 'walk the dog', dayList: Monday},
    {name: 'Wash clothes', description: 'wash your laundry', dayList: Tuesday},
    {name: 'Feed cbass',  description: 'feed the cat', dayList: Monday}
#     {name: 'Blueberries', price: 5.99,  description: 'tasty blue fruit', category: fruit},
#     {name: 'Carrot', price: 3.99,  description: 'Helps you see at night; orange in color.', category: veg},
#     {name: 'Green Bean', price: 5.99, description: "My dog's favorite treat", category: veg},
#     {name: 'Ice Cream', price: 4.99,  description: 'Best item in the store!', category: dairy}
])