FactoryGirl.define do
    factory :injury do
        injury_type               { Faker::Hacker.noun }
        affected_body_type        { Faker::Hacker.noun }
        treatment                 { Faker::Hacker.noun}
    end
end