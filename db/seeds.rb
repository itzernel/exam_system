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

# create question_type examples
qt1 = QuestionType.create!(:name => '填空题')
qt2 = QuestionType.create!(:name => '应用题')
qt3 = QuestionType.create!(:name => '简答题')
qt4 = QuestionType.create!(:name => '选择题')

# create question examples
Question.create!(:title => '你今年____岁', :key => '20', :question_type => qt1)
Question.create!(:title => '请分析2012地球毁灭的可能性', :key => '76.8%, 至于你信不信，反正我信了……',
                 :question_type => qt3)
Question.create!(:title => '请问要保持大远的车距和限制最高时速，高铁才不会追尾？', :key => '250 km/h', :question_type => qt2)
Question.create!(:title => '<p> 请选出正确答案</p><p>A 正确 &nbsp;B 可能正确 &nbsp;C 错误 &nbsp;D 可能错误</p>', 
                 :key => 'A', :question_type => qt4)
