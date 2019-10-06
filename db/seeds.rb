# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


white = Bread.create(name: 'White Medium', breadtype: 'Loaf', imgurl: 'https://groceries.morrisons.com/productImages/212/212270011_0_640x640.jpg?identifier=94622444edc21e571e7a217ad07318c7')
garlic = Bread.create(name: 'The Best', breadtype: 'Garlic', imgurl: 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2015/5/28/2/TM1A14F_Garlic-Bread_s4x3.jpg.rend.hgtvcom.826.620.suffix/1433523400627.jpeg')
wholegrain = Bread.create(name: 'Warbutons Wholegrain', breadtype: 'Wholegrain', imgurl: 'https://www.slrmag.co.uk/wp-content/uploads/2014/11/New-range-of-400g-breads-launched-by-Warburtons.jpg')
devbread = Bread.create(name: 'Dev Bread', breadtype: 'The Cash Money Kind', imgurl: 'https://i.ytimg.com/vi/MNo9kfEkEDE/maxresdefault.jpg')
normie = Bread.create(name: 'Normie Bread', breadtype: 'Sliced', imgurl: 'http://bp3.blogger.com/_Q5SpTKazer0/RzzXlJ318MI/AAAAAAAABmQ/XPG4qSC2WQE/s400/matcha+red+bean+loaf24.jpg')
french = Bread.create(name: 'Le Breadette', breadtype: 'Baguette', imgurl: 'https://www.kingarthurflour.com/sites/default/files/recipe_legacy/8-3-large.jpg')
naan = Bread.create(name: 'Naan Bread', breadtype: 'Naan Bread', imgurl: 'https://www.budgetbytes.com/wp-content/uploads/2010/09/Homemade-Naan-stack-1.jpg')
crouton = Bread.create(name: 'Boring Bois', breadtype: 'Croutons', imgurl: 'https://www.rachelcooks.com/wp-content/uploads/2016/03/4-ingredient-baked-whole-grain-croutons-10-minute-600-2-of-3-600x803.jpg')
fresh = Bread.create(name: 'Fresh out of the oven', breadtype: 'Loaf', imgurl: 'http://www.thefreshloaf.com//files/u19256/Italian%20Feather%20Bread%20-%20Beard%20on%20Bread%20003.jpg')
brown = Bread.create(name: 'Good-4-U Bread', breadtype: 'Brown', imgurl: 'https://www.simplyrecipes.com/wp-content/uploads/2017/02/2017-03-11-IrishBrownBread-2.jpg')


comment1 = Comment.create(content: 'Is good bread', bread_id: 1)
comment2 = Comment.create(content: 'Is bread', bread_id: 2)
comment3 = Comment.create(content: 'Is lovely bread', bread_id: 3)
comment4 = Comment.create(content: 'Is meh bread', bread_id: 4)
comment5 = Comment.create(content: 'Is bad bread', bread_id: 5)
comment6 = Comment.create(content: 'git dat bread', bread_id: 6)
comment7 = Comment.create(content: 'Is just bread bread', bread_id: 7)
comment8 = Comment.create(content: "Who tf makes an app like this? one-star review do not bother, app doesn't even work properly. ", bread_id: wholegrain)
comment9 = Comment.create(content: 'Is healthy bread', bread_id: 8)
comment10 = Comment.create(content: 'Is best bread', bread_id: 9)
comment11 = Comment.create(content: 'Is bready.', bread_id: 10)



# Bread.all.each do  |bread|  
#     bread.comments << Comment.new(content: 'meh')   
# end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?