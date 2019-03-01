# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_users
  user_id = 0
  10.times do 
    User.create(
      name: "test#{user_id}",
      email: "test#{user_id}@test.com",
      password: '123456',
      password_confirmation: '123456'
    )
    user_id = user_id + 1
  end
end


def seed_patients
    name = ['Jim', 'Bob', 'Alice', 'Jennifer' , 'Maggy', 'Paul', 'Rodriguez']
    
    name.each do |name|
        Patient.create(name: name, date_of_birth: '22/05/1990', address: '123 Fake Street')
    end
end

def seed_patientnotes
  patients = Patient.all

  patients.each do |patient|
    5.times do
      Patientnote.create(
        title: Faker::Lorem.sentences[0], 
        content: Faker::Lorem.sentences[0], 
        patient_id: rand(1..6), 
      )
    end
  end
end

seed_users
seed_patients
seed_patientnotes