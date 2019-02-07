FactoryBot.define do
  factory :book do
    name { "TheBook name" }
    release_time  { "201001" }
    user
  end
end
