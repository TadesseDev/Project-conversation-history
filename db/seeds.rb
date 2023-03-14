# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user=User.first
project1=Project.create!(name: "Project 1", description: "This is the first project", status: "Active", user:  User.first)
# project1=Project.first
Comment.create!([{text: "Comment 1", user: user, project: project1},
  {text: "Comment 2", user: user, project: project1}])
