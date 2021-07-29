require 'ffaker'

User.create(email: 'test_user@gmail.com', password: 'password', password_confirmation: 'password') unless User.exists?

5.times { FactoryBot.create(:project, user_id: 1) } unless Project.exists?

10.times { FactoryBot.create(:task, project_id: rand(1..5)) } unless Task.exists?

15.times { FactoryBot.create(:comment, task_id: rand(1..10)) } unless Comment.exists?
