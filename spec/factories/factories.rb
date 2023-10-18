FactoryBot.define do
  factory :admin do
    email { "john@admin.com" }
    password  { "password" }
  end
  factory :card do
    title { "arandomtitle"}
    content { "somecontent" }
  end
  factory :photo do
    title { "arandomtitle"}
    content { "somecontent" }
  end
end
