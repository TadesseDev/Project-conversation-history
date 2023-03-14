# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user=User.first
project1=Project.create!(name: "This is the very first project we are working on ", description: "This is the first project", status: "Active", user:  User.first)
# project1=Project.first
Comment.create!([
  {text: "What is the project type we are working on? , This is the first question because I believe there are a lot of features related to it. This also determining what the status of a project could possibly be. The importance of project management in organizations can't be overstated. When it's done right, it helps every part of the business run more smoothly.... [MY ANSWER] I consider its a general purpose project that can be active or inactive. The app is flexible in a way that we can update it in a future to allow other status types", user: user, project: project1},
  {text: "Are we considering a single project, or should i consider adding multiple project? This is the second question that comes to mind. Of course its mandatory to have a temple first, This allows us to mimic this template for all the project we are going to have... [MY ANSWER] I consider I should only consider a single page application that can be used as a template", user: user, project: project1},
  {text: "Should  I be worried about the style?  Style is good to make the app looks nice. I think about it a couple of time about how much stile I should be adding. [MY ANSWER] Since there is nothing mentioned about the styling in the requirement specification I consider showing I'm capable of styling with the company tech stack is enough. Thant is why I have used  [tailwindcss]", user: user, project: project1}
  ])

  UpdateHistory.create!(user: user, project: project1)
  UpdateHistory.create!(user: user, project: project1)
  UpdateHistory.create!(user: user, project: project1)

