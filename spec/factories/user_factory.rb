FactoryGirl.define do
  factory :teacher, :class => :user do |f|
    name "Jeweller"
    email do |u|
      "#{u.name}@exam.com"
    end
    password '123456'
    password_confirmation '123456'
    role 'teachers'
  end

  factory :student, :parent => :teacher do
    name 'Ruby'
    role 'student'
  end

  factory :admin, :parent => :teacher do
    name 'admin'
    role 'admins'
  end
end
