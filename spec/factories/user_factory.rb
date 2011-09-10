FactoryGirl.define do
  factory :teacher, :class => :user do
    name "teacher"
    email { "#{name}@exam.com" }
    password '123456'
    password_confirmation { password }
    role { name }

    factory :student do
      name 'student'
    end

    factory :admin do
      name 'admin'
    end
  end
end
