# create an admin User and a registered User.
admin = User.create! email: 'my_admin@epfl.ch', password: 'password', name: 'Admin', role: 'admin'
user1 = User.create! email: 'my_1@epfl.ch', password: 'password', name: 'Num_1'
user2 = User.create! email: 'my_2@epfl.ch', password: 'password', name: 'Num_2'
user3 = User.create! email: 'my_3@epfl.ch', password: 'password', name: 'Num_3'
user4 = User.create! email: 'my_4@epfl.ch', password: 'password', name: 'Num_4'


1.upto(5) do |i|
  Idea.create! title: "Idea for #{admin.name} #{i}", user_id: admin.id, photo_url: 'turtle.jpg'
  Idea.create! title: "Idea for #{user1.name} #{i}", user_id: user1.id, photo_url: 'turtle.jpg'
  Idea.create! title: "Idea for #{user2.name} #{i}", user_id: user2.id, photo_url: 'turtle.jpg'
  Idea.create! title: "Idea for #{user3.name} #{i}", user_id: user3.id, photo_url: 'turtle.jpg'
  Idea.create! title: "Idea for #{user4.name} #{i}", user_id: user4.id, photo_url: 'turtle.jpg'
end
