# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Adnan', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Olamilekan', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
third_user = User.create(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from USA.')
first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: second_user, title: 'Hello', text: 'This is my second post')
third_post = Post.create(author: third_user, title: 'Hello', text: 'This is my third post')
fourth_post = Post.create(author: first_user, title: 'Hello', text: 'This is my fourth post')
first_comment = Comment.create(author: first_user, post: first_post, text: 'This is my first comment')
second_comment = Comment.create(author: second_user, post: second_post, text: 'This is my second comment')
third_comment = Comment.create(author: third_user, post: third_post, text: 'This is my third comment')
fourth_comment = Comment.create(author: first_user, post: fourth_post, text: 'This is my fourth comment')
fifth_comment = Comment.create(author: second_user, post: first_post, text: 'This is my fifth comment')
sixth_comment = Comment.create(author: third_user, post: second_post, text: 'This is my sixth comment')

# PS C:\Users\USER\Documents\New Projects\Microverse\Module 5\blog-app> rails generate devise:install
#       create  config/initializers/devise.rb
#       create  config/locales/devise.en.yml
# ===============================================================================

# Depending on your application's configuration some manual setup may be required:

#   1. Ensure you have defined default url options in your environments files. Here
#      is an example of default_url_options appropriate for a development environment       
#      in config/environments/development.rb:  

#        config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }       

#      In production, :host should be set to the actual host of your application.

#      * Required for all applications. *      

#   2. Ensure you have defined root_url to *something* in your config/routes.rb.
#      For example:

#        root to: "home#index"

#      * Not required for API-only Applications *

#   3. Ensure you have flash messages in app/views/layouts/application.html.erb.
#      For example:

#        <p class="notice"><%= notice %></p>   
#        <p class="alert"><%= alert %></p>     
#   4. You can copy Devise views (for customization) to your app by running:

#        rails g devise:views

#      * Not required *

# ===============================================================================