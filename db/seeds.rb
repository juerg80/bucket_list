# create an admin User and a registered User.
admin = User.create! email: 'neill@extensionschool.ch',
                     password: 'password',
                     name: 'NJ Pearman',
                     role: 'admin'

registered = User.create! email: 'visitor@extensionschool.ch',
                          password: 'password',
                          name: 'Visitor'

5.times do |i|
  Idea.create! user: admin,
             title: "Neill's idea #{i}"
end

5.times do |i|
  Idea.create! user: registered,
             title: "Visitor's idea #{i}"
end
