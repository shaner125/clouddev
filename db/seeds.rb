def seed_users
  user_id = 0
  10.times do 
    User.create(
      name: "Dr. #{user_id}",
      email: "test#{user_id}@test.com",
      password: 'password',
      password_confirmation: 'password',
      role: 'doctor'
    )
    user_id = user_id + 1
  end
end

def seed_admin
  user_id = 11
  5.times do 
    User.create(
      name: "Admin. #{user_id-10}",
      email: "admin#{user_id-10}@test.com",
      password: 'password',
      password_confirmation: 'password',
      role: 'admin'
    )
    user_id = user_id + 1
  end
end

def seed_patients
  users = User.all

  users.each do |user|
    10.times do
      Patient.create!(
        name: Faker::Name.name,
        date_of_birth: Faker::Date.birthday(18, 65),
        address: Faker::Address.street_address, 
        user_id: user.id
      )
    end
  end
end

def seed_patientnotes
    patients = Patient.all
    year = 2018
    patients.each do |patient|
      5.times do
        Patientnote.create!(
            date: "12/03/#{year}",
            title: "Routine Check-Up",
            content: "Patient displaying chest infection symptoms, two week course of anti-biotics prescribed",
            patient_id: patient.id
            )
            year = year - 1
        end
        year = 2018
      end
end


seed_users
seed_admin
seed_patients
seed_patientnotes
