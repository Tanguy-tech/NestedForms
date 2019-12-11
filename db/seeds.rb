# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# ATTENTION CETTE PARTIE EFFACE LA BASE DE DONNÉE EXISTANTE
# (IL EST CEPENDANT POSSIBLE DE NE RIEN EFFACER ET DE GÉNÉRER DE NOUVEAUX 
# OBJECT EN EFFECTUANT UNE MODIFICATION DANS LA GÉNÉRATION ALÉATOIRE DE CHAQUE OBJETS.)
Answer.destroy_all
Question.destroy_all
Survey.destroy_all
ActiveRecord::Base.connection_pool.with_connection do |conn|
  conn.execute("TRUNCATE answers, questions, surveys RESTART IDENTITY")
end
puts 'Surveys destroy'
puts 'Questions destroy'



# CREATE RANDOM SURVEYS
20.times do
  Survey.create(title: Faker::Book.title)
end
puts '20 Surveys created!'



# CREATE RANDOM QUESTIONS
100.times do
  Question.create(survey_id: rand(1..20), # Idem ici on pourrais remplacer 'rand(1..20)' par Survey.all.sample => ce qui selectionerais un ID Survey existant.
                  content: Faker::Lorem.sentence + '?',
                  answered: 0) #ici on met answered a 0 pour que chaque question générée reste disponible et n'ai pas le status répondue
end
puts '100 Questions created!'