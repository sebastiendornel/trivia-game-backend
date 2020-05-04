# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# require 'securerandom'

User.delete_all
Question.delete_all
UserQuestion.delete_all

user1 = User.create(name: "DannyTwoThumbs")
user2 = User.create(name: "I can whistle")

question1 = Question.create(question_text: "What was the punishment for Sysiphus's craftiness?", correct_answer: "Cursed to roll a boulder up a hill for eternity.", incorrect_answers: ["Tied to a boulder for eternity, being pecked by birds.", "Standing in a lake filled with water he could not drink.", "To fell a tree that regenerated after every axe swing."])
question2 = Question.create(question_text: "According to a Beatles song, who kept her face in a jar by the door?", correct_answer: "Eleanor Rigby.", incorrect_answers: ["Loretta Martin.", "Molly Jones.", "Lady Madonna."])
question3 = Question.create(question_text: "The mountainous Khyber Pass connects which of the two following countries?", correct_answer: "Afghanistan and Pakistan.", incorrect_answers: ["India and Nepal.", "Pakistan and India.", "Tajikistan and Kyrgyzstan."])
resp1 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp2 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp3 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp4 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp5 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp6 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp7 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp8 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp9 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp10 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp11 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp12 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp13 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp14 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp15 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp16 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp17 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp18 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp19 = RestClient.get 'https://opentdb.com/api.php?amount=50'
# resp20 = RestClient.get 'https://opentdb.com/api.php?amount=50'

def cleaner(argument) #"[\"Valpara&iacute;so\", \"Copiap&oacute;\", \"Antofagasta\"]" is another issue
    gsub1 = argument.gsub("&quot", "'")
    gsub2 = gsub1.gsub("&#039;", "'")
    gsub3 = gsub2.gsub("&amp", "&")
    return gsub3
end

# ok. Maybe i'll get a beer soon then
# arr.map{|x| cleaner(x)}
json1 = JSON.parse(resp1.body)
# json2 = JSON.parse(resp2.body)
# json3 = JSON.parse(resp3.body)
# json4 = JSON.parse(resp4.body)
# json5 = JSON.parse(resp5.body)
# json6 = JSON.parse(resp6.body)
# json7 = JSON.parse(resp7.body)
# json8 = JSON.parse(resp8.body)
# json9 = JSON.parse(resp9.body)
# json10 = JSON.parse(resp10.body)
# json11 = JSON.parse(resp11.body)
# json12 = JSON.parse(resp12.body)
# json13 = JSON.parse(resp13.body)
# json14 = JSON.parse(resp14.body)
# json15 = JSON.parse(resp15.body)
# json16 = JSON.parse(resp16.body)
# json17 = JSON.parse(resp17.body)
# json18 = JSON.parse(resp18.body)
# json19 = JSON.parse(resp19.body)
# json20 = JSON.parse(resp20.body)

# function stringFixer1(string){
#   return string.replace(/&quot;/g, "'")
# }

# function stringFixer2(string){
#   return string.replace(/&#039;/g, "'")
# }

# function stringFixer3(string){
#   return string.replace(/&amp/g, "&")
# }

10.times do
    json1["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
end

# i50 = json1["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# ii50 = json2["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# iii50 = json3["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# iv50 = json4["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# v50 = json5["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# vi50 = json6["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# vii50 = json7["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# viii50 = json8["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# ix50 = json9["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# x50 = json10["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xi50 = json11["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xii50 = json12["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xiii50 = json13["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xiv50 = json14["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xv50 = json15["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xvi50 = json16["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xvii50 = json17["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xviii50 = json18["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xix50 = json19["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}
# xx50 = json20["results"].each{|question| Question.create(question_text: question["question"], correct_answer: question["correct_answer"], incorrect_answers: question["incorrect_answers"])}

userquestion1 = UserQuestion.create(points: 1, user_id: user1.id, question_id: question2.id)
userquestion2 = UserQuestion.create(points: 1, user_id: user2.id, question_id: question1.id)

