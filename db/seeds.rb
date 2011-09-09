# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# create user examples
User.create!(:email => 'teacher@exam.com', :name => "teacher", :password => '123456', :password_confirmation => '123456', :role => 'teacher')
User.create!(:email => 'student@exam.com', :name => 'student', :password => '123456', :password_confirmation => '123456', :role => 'student')
User.create!(:email => 'admin@exam.com', :name => "admin", :password => '123456', :password_confirmation => '123456', :role => 'teacher')
