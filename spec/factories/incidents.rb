FactoryGirl.define do
    factory :incident do
        first_name                  { Faker::Name.first_name }
        last_name                   { Faker::Name.last_name }
        department                  { Faker::Commerce.department }
        job_title                   { Faker::Name.title }
        date_of_hire                { Faker::Date.backward(522) }
        description                 { Faker::Hacker.phrases }
        date_of_incident            { Faker::Date.backward(1) }
        date_reported               { Faker::Date.backward(1) }
        location_of_incident        { Faker::Address.building_number }
        type_of_incident            { Faker::Hacker.noun }
        property_damage             { Faker::Hacker.noun }
        supervisor_last_name        { Faker::Name.last_name }
        supervisor_first_name       { Faker::Name.first_name }
        suggested_corrective_action { Faker::Hacker.phrases }
    end
end