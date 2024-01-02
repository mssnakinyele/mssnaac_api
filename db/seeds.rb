# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create news
News.create!(title: 'First post', date: '2024-01-02', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYscfUBUbqwGd_DHVhG-ZjCOD7MUpxp4uhNe7toUg4ug&s')
News.create!(title: 'Second post', date: '2024-04-02', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4XPCbG5A091oC0R2hs3vzVhUZgeyva88vh3TGYjRutio7fwZv25_LTeYDp-8y3a94FtA&usqp=CAU')
News.create!(title: 'Third post', date: '2024-05-02', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAVDD_D0mDmK0UyXIh-yz-REXxz-Fyo9edsmIUR6BHUo-WYcwVRLa0OHxu9Pr_utVPhuI&usqp=CAU')