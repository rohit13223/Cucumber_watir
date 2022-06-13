# frozen_string_literal: true


When 'I am on signin page' do
  visit_page SigninPage do |signin_page|
    signin_page.visit_sign_in_page(@base_url)
    step 'I should be on Login page'
  end
end

And  'I should be on Login page' do
  visit_page SigninPage do |signin_page|
    signin_page.verify_signin_page()
  end
end 

Then 'I signin as client user' do
  visit_page SigninPage do |signin_page|
    signin_page.signin_user('client1@yopmail.com', 'P@s5word1')
  end
end

Then 'I should be landed on client dashboard page' do
  visit_page SigninPage do |signin_page|
    # signin_page.verify_client_dashboard()
  end
end

Then 'I signin as expert user' do
  visit_page SigninPage do |signin_page|
    signin_page.signin_user('expert@yopmail.com', '1qaz!QAZ')
  end
end

Then('I should be landed on expert dashboard page') do
    visit_page SigninPage do |signin_page|
      # signin_page.verify_expert_dashboard()
    end
end

Then('I signin as trainee user') do
  visit_page SigninPage do |signin_page|
    signin_page.signin_user('traineenew@yopmail.com', 'P@s5word1')
  end
end

Then('I should be landed on trainee dashboard page') do
  visit_page SigninPage do |signin_page|
    # signin_page.verify_trainee_dashboard()
  end
end

When('I signin as client user with invalid credentails') do
  visit_page SigninPage do |signin_page|
    signin_page.signin_user('client1ee@yopmail.com', 'P@s5wordwew2')
  end
end

Then('I should be see proper validation') do
  visit_page SigninPage do |signin_page|
    verify_signin_validation()
  end
end

When('I signin as expert user with invalid credentails') do
  visit_page SigninPage do |signin_page|
    signin_page.signin_user('expertee@yopmail.com', 'P@s5wordwe1')
  end
end

When('I signin as trainee user with invalid credentails') do
  visit_page SigninPage do |signin_page|
    signin_page.signin_user('trainee1ee@yopmail.com', 'P@s5word12wd')
  end
end