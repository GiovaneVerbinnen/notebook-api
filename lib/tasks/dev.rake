namespace :dev do
  desc "Configura o ambiente de dev"
  task setup: :environment do
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(to: 18.years.ago, from: 60.years.ago)
      )
    end
    puts "Contatos cadastrados!"
  end

end
