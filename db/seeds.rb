15.times do 
    Role.create(character_name: Faker::Movies::LordOfTheRings.character)
end 

30.times do
    Audition.create(
        actor: Faker::Name.name,
        location: ["NY", "LA", "Denver", "SF"].sample,
        phone: Faker::PhoneNumber.phone_number,
        hired: false,
        role_id: Role.pluck(:id).sample
    )
end 