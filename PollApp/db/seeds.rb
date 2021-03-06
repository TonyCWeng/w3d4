# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(user_name: "Bill")
user2 = User.create(user_name: "Nye")
user3 = User.create(user_name: "Clinton")
user4 = User.create(user_name: "West")
user5 = User.create(user_name: "East")

poll1 = Poll.create(title: "Color", author_id: user1.id)
poll2 = Poll.create(title: "Food", author_id: user1.id)
poll3 = Poll.create(title: "Season", author_id: user3.id)
poll4 = Poll.create(title: "Left or Right", author_id: user5.id)

question1 = Question.create(inquiry: "Favorite Color?", poll_id: 1)
question2 = Question.create(inquiry: "Blue or Red", poll_id: 1)
question3 = Question.create(inquiry: "Thai or Japanese?", poll_id: 2)
question4 = Question.create(inquiry: "Vegan?", poll_id: 2)
question5 = Question.create(inquiry: "French fries or onion rings?", poll_id: 2)
question6 = Question.create(inquiry: "Winter or Summer?", poll_id: 3)
question7 = Question.create(inquiry: "Do you have hay fever?", poll_id: 3)
question8 = Question.create(inquiry: "Do you like snow?", poll_id: 3)
question9 = Question.create(inquiry: "Left Handed?", poll_id: 4)
question10 = Question.create(inquiry: "Polital spectrum?", poll_id: 4)

answer1 = AnswerChoice.create(answer: "Green", question_id: 1)
answer2 = AnswerChoice.create(answer: "Purple", question_id: 1)
answer3 = AnswerChoice.create(answer: "Red", question_id: 1)
answer4 = AnswerChoice.create(answer: "Blue", question_id: 1)
answer5 = AnswerChoice.create(answer: "Red", question_id: 2)
answer6 = AnswerChoice.create(answer: "Blue", question_id: 2)
answer7 = AnswerChoice.create(answer: "Thai", question_id: 3)
answer8 = AnswerChoice.create(answer: "Japanese", question_id: 3)
answer9 = AnswerChoice.create(answer: "Yes", question_id: 4)
answer10 = AnswerChoice.create(answer: "No", question_id: 4)
answer11 = AnswerChoice.create(answer: "French Fries", question_id: 5)
answer12 = AnswerChoice.create(answer: "Onion Rings", question_id: 5)
answer13 = AnswerChoice.create(answer: "Winter", question_id: 6)
answer14 = AnswerChoice.create(answer: "Summer", question_id: 6)
answer15 = AnswerChoice.create(answer: "Yes", question_id: 7)
answer16 = AnswerChoice.create(answer: "No", question_id: 7)
answer17 = AnswerChoice.create(answer: "Yes", question_id: 8)
answer18 = AnswerChoice.create(answer: "No", question_id: 8)
answer19 = AnswerChoice.create(answer: "Yes", question_id: 9)
answer20 = AnswerChoice.create(answer: "No", question_id: 9)
answer21 = AnswerChoice.create(answer: "Left", question_id: 10)
answer22 = AnswerChoice.create(answer: "Right", question_id: 10)
answer23 = AnswerChoice.create(answer: "Undecided", question_id: 10)

response1 = Response.create(user_id: 1, answer_id: 1)
response2 = Response.create(user_id: 1, answer_id: 11)
response3 = Response.create(user_id: 1, answer_id: 17)
response4 = Response.create(user_id: 1, answer_id: 20)
response5 = Response.create(user_id: 2, answer_id: 3)
response6 = Response.create(user_id: 2, answer_id: 7)
response7 = Response.create(user_id: 2, answer_id: 11)
response8 = Response.create(user_id: 2, answer_id: 14)
response9 = Response.create(user_id: 2, answer_id: 20)
response10 = Response.create(user_id: 3, answer_id: 21)
response11 = Response.create(user_id: 3, answer_id: 23)
response12 = Response.create(user_id: 3, answer_id: 18)
response13 = Response.create(user_id: 3, answer_id: 1)
response14 = Response.create(user_id: 3, answer_id: 5)
