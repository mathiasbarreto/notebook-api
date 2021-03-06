require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts ' Cadastrando os tipos de contato...'
kinds = %w(Amigo Comercial Conhecido)
kinds.each do |kind|
  Kind.create!(description: kind)
end
puts 'Tipos de contatos cadastrados com sucesso!'

##################################

p "Cadastrando os contatos"
100.times do |i|
    Contact.create!(
      name: Faker::Name.name,
      email:Faker::Internet.email,
      birthdate: Faker::Date.between(from: 65.years.ago, to: 18.years.ago),
      kind: Kind.all.sample
    )
  end
p "Contatos cadastrados com sucesso!"
