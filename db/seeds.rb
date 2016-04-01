Incident.destroy_all

INCIDENT_TYPE = ['Injury', 'Near miss', 'Property damage']
DEPARTMENTS = ["American Ethnic Studies", "American Indian Studies", "Anthropology", "Applied Mathematics",
    "Art, Art History & Design", "Asian Languages & Literature", "Astronomy", "Biology", "Chemistry", "Classics",
    "Communication", "Comparative History of Ideas", "Comparative Literature, Cinema & Media", "Dance", "Drama",
    "DXARTS", "Economics", "English", "French & Italian Studies", "Gender, Women & Sexuality Studies", "Geography",
    "Germanics", "History", "Jackson School of International Studies", "Law, Societies & Justice", "Linguistics",
    "Mathematics", "Music", "Near Eastern Languages & Civilization", "Philosophy", "Physics", "Political Science",
    "Psychology", "Scandinavian Studies", "Slavic Languages & Literatures", "Sociology", "Spanish & Portuguese Studies",
    "Speech & Hearing Sciences", "Statistics"]

100.times do
    Incident.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        department: DEPARTMENTS.sample,
        job_title: Faker::Name.title,
        date_of_hire: Faker::Date.backward(522),
        description: Faker::Hacker.phrases,
        date_of_incident: Faker::Date.backward(1),
        date_reported: Faker::Date.backward(1),
        location_of_incident: Faker::Address.building_number,
        type_of_incident: INCIDENT_TYPE.sample,
        supervisor_last_name: Faker::Name.last_name,
        supervisor_first_name: Faker::Name.first_name,
        suggested_corrective_action: Faker::Hacker.phrases
        )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
