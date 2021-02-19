# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(username: 'flameo')
User.create!(username: 'char')
User.create!(username: 'sudo')
User.create!(username: 'drop_tables')
User.create!(username: 'xkcd')
User.create!(username: 'reut')
User.create!(username: 'jarjar')



Poll.destroy_all
Poll.create!(title: 'Myers Briggs', author_id: User.all[1].id)
Poll.create!(title: 'Sorting Hat', author_id: 2)
Poll.create!(title: 'Jedi', author_id: 3)

Question.destroy_all
Question.create!(text: "Are you a J or a P?", poll_id: 1)
Question.create!(poll_id: 1, text: "Are you an N or an S?")
Question.create!(poll_id: 1, text: "Are you introvert or extrovert?")
Question.create!(poll_id: 2, text: "Which House fits you best?")
Question.create!(poll_id: 3, text: "Is the Force in you?")

AnswerChoice.destroy_all
AnswerChoice.create!(question_id: 1, text: "J")
AnswerChoice.create!(question_id: 1, text: "P")
AnswerChoice.create!(question_id: 2, text: "N")
AnswerChoice.create!(question_id: 2, text: "P")
AnswerChoice.create!(question_id: 3, text: "introvert")
AnswerChoice.create!(question_id: 3, text: "extrovert")
AnswerChoice.create!(question_id: 4, text: "Gryffindor")
AnswerChoice.create!(question_id: 4, text: "Ravenclaw")
AnswerChoice.create!(question_id: 4, text: "Hufflepuff")
AnswerChoice.create!(question_id: 4, text: "Slytherin")
AnswerChoice.create!(question_id: 5, text: "yes")
AnswerChoice.create!(question_id: 5, text: "no")

Response.destroy_all
Response.create!(respondent_id: 2, answer_choice_id: 1)
Response.create!(respondent_id: 2, answer_choice_id: 3)
Response.create!(respondent_id: 2, answer_choice_id: 5)
Response.create!(respondent_id: 2, answer_choice_id:7)
Response.create!(respondent_id: 2, answer_choice_id: 10)
Response.create!(respondent_id: 5, answer_choice_id: 1)
Response.create!(respondent_id: 5, answer_choice_id: 3)
Response.create!(respondent_id: 5, answer_choice_id: 5)
Response.create!(respondent_id: 5, answer_choice_id:7)
Response.create!(respondent_id: 5, answer_choice_id: 10)
Response.create!(respondent_id: 4, answer_choice_id: 2)
Response.create!(respondent_id: 4, answer_choice_id: 6)
Response.create!(respondent_id: 4, answer_choice_id: 8)
Response.create!(respondent_id: 4, answer_choice_id: 9)
Response.create!(respondent_id: 4, answer_choice_id: 4)





















