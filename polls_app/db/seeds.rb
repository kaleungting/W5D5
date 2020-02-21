# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Response.destroy_all # ALWAYS have in our seed file (generally)
AnswerChoice.destroy_all # this cleans our database so when we seed, we will only have these seeds
Question.destroy_all # clears out all of our other data
Poll.destroy_all # destroy things in reverse order
User.destroy_all

u1 = User.create!(username: 'KenTing')
u2 = User.create!(username: 'IsaacNam')
u3 = User.create!(username: 'DarthVader')

p1 = Poll.create!(title: 'Food', user_id: u1.id)
p2 = Poll.create!(title: 'Animal', user_id: u2.id)
p3 = Poll.create!(title: 'Game', user_id: u3.id)
p4 = Poll.create!(title: 'Movie', user_id: u1.id)


q1 = Question.create!(question: 'Favorite food?', poll_id: p1.id)
q2 = Question.create!(question: 'Favorite recipe?', poll_id: p1.id)
q3 = Question.create!(question: 'Cutest animal?', poll_id: p2.id)
q4 = Question.create!(question: 'Favorite game?', poll_id: p3.id)
q5 = Question.create!(question: 'Favorite movie?', poll_id: p4.id)


ac1 = AnswerChoice.create!(answer: "Sushi", question_id: q1.id)
ac2 = AnswerChoice.create!(answer: "Pizza", question_id: q1.id)
ac3 = AnswerChoice.create!(answer: "Pork Fried Rice", question_id: q2.id)
ac4 = AnswerChoice.create!(answer: "Shakshush", question_id: q2.id)
ac5 = AnswerChoice.create!(answer: "Dog", question_id: q3.id)
ac6 = AnswerChoice.create!(answer: "Cat", question_id: q3.id)
ac7 = AnswerChoice.create!(answer: "Final Fantasy", question_id: q4.id)
ac8 = AnswerChoice.create!(answer: "Smash Bros", question_id: q4.id)
ac9 = AnswerChoice.create!(answer: "Inception", question_id: q5.id)
ac10 = AnswerChoice.create!(answer: "Dark Knight", question_id: q5.id)

r1 = Response.create!(answer_id: ac1.id, user_id: u1.id)
r2 = Response.create!(answer_id: ac2.id, user_id: u2.id)
r3 = Response.create!(answer_id: ac7.id, user_id: u3.id)
r4 = Response.create!(answer_id: ac10.id, user_id: u1.id)
r5 = Response.create!(answer_id: ac3.id, user_id: u2.id)
