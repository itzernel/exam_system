# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# create user examples
User.create!(:email => 'teacher@exam.com', :name => "teacher", :password => '123456',
             :password_confirmation => '123456', :role => 'teacher')
User.create!(:email => 'student@exam.com', :name => 'student', :password => '123456',
             :password_confirmation => '123456', :role => 'student')
User.create!(:email => 'admin@exam.com', :name => "admin", :password => '123456',
             :password_confirmation => '123456', :role => 'admin')

# create paper examples
paper = Paper.create!(:title => '2011～2012期末考试', :score => 24)

# create question_type examples
multiple_choice = QuestionType.create!(:type_cd => 0, :paper => paper)
blank_filling = QuestionType.create!(:type_cd => 2, :paper => paper)
short_answer = QuestionType.create!(:type_cd => 3, :paper => paper)
calculation = QuestionType.create!(:type_cd => 4, :paper => paper)

# create question examples
Question.create!(:title => '你今年____岁', :key => '20', :score => 2, :question_type => blank_filling, :paper => paper)
Question.create!(:title => '请分析2012地球毁灭的可能性', :key => '76.8%, 至于你信不信，反正我信了……', :score => 10,
                 :question_type => short_answer, :paper => paper)
Question.create!(:title => '请问要保持大远的车距和限制最高时速，高铁才不会追尾？', :key => '250 km/h', :score => 10, 
                 :question_type => calculation, :paper => paper)
Question.create!(:title => '<p> 请选出正确答案</p><p>A 正确 &nbsp;B 可能正确 &nbsp;C 错误 &nbsp;D 可能错误</p>', 
                 :key => 'A', :score => 2, :question_type => multiple_choice, :paper => paper)
