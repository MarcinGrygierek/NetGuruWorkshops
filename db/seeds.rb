# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([	
	{ email: 'jan@a.pl', password: 'password', password_confirmation: 'password', firstname: 'Jan', lastname: 'Nowak' },
	{ email: 'adam@a.pl', password: 'password', password_confirmation: 'password', firstname: 'Adam', lastname: 'Kowal' },
	{ email: 'tomek@a.pl', password: 'password', password_confirmation: 'password', firstname: 'Tomek', lastname: 'Nowacki' },
	{ email: 'adian@a.pl', password: 'password', password_confirmation: 'password', firstname: 'Adrian', lastname: 'Sawski' },
	{ email: 'marcin@a.pl', password: 'password', password_confirmation: 'password', firstname: 'Marcin', lastname: 'Igrek' },
	{ email: 'admin@a.pl', password: 'password', password_confirmation: 'password', firstname: 'Admin', lastname: 'Admin', admin: true }
])

categories = Category.create([
    { name: 'Computers' },
    { name: 'Cars' }
])

products = Product.create([
    { title: 'Dell Inspiron 15r 5521', description: 'Good laptop for everyone.', price: '800.99', category_id: '1', user_id: '1'},
    { title: 'MacBook Air', description: 'iNnotative, iNtelligent and ultra-thin device for premium users.', price: '1499.99', category_id: '1', user_id: '1'},
    { title: 'Lenovo IdeaPad', description: 'Simple machine for games and stuff.', price: '500.31', category_id: '1', user_id: '3'},
    { title: 'Lenovo ThinkPad', description: 'Only for pro users with high demands.', price: '2199.99', category_id: '1', user_id: '3'},
    { title: 'Acer V3', description: 'With super efficient i5 processor you will be able to play the latest games!', price: '762.00', category_id: '1', user_id: '3'},
    { title: 'Acer Aspire', description: 'Movies, documents, games in one place.', price: '299.99', category_id: '1', user_id: '3'},
    { title: 'HP Pavilion dv6', description: 'It gets so hot during work you can use it instead frying pan.', price: '399.99', category_id: '1', user_id: '3'},
 ])

reviews = Review.create([
    { content: '10/10 would buy again.', rating: '5', product_id: '1', user_id: '2' },
    { content: 'I bought this laptop for games but they are not working.', rating: '2', product_id: '2', user_id: '2' },
    { content: 'Bought this for my wife, now she is playing The Sims all the time. Thanks for nothing.', rating: '1', product_id: '3', user_id: '2' },
    { content: 'Good stuff for demanding users.', rating: '1', product_id: '4', user_id: '3' },
    { content: 'Yeah, it works, yay.', rating: '5', product_id: '4', user_id: '2' },
    { content: 'Good stuff.', rating: '5', product_id: '7', user_id: '3' },
    { content: '2/5.', rating: '5', product_id: '6', user_id: '3' },
	{ content: '4/5.', rating: '4', product_id: '3', user_id: '2' }
])
 