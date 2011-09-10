# ExamSystem

This project is for study use.

## Contributing

1.  Clone the `develop` branch

      $ git clone git://github.com/Jeweller-Tsai/exam_system.git -b develop

2.  Run `bundle install`

3.  Set up databases

      $ rake db:create
      $ rake db:migrate
      $ rake db:seed
      $ rake db:test:prepare

4.  Run `guard` to check whether it is correctly installed

5.  If you finish a new feature, remember to push it to the `develop`
   branch

      $ git push origin develop

Remember, every time before you push your code, please clone the latest
version of the `develop` branch and run all the tests.
