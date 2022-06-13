# frozen_string_literal: true

When('I am on client signup page') do
  visit_page SignupPage do |signup_page|
    signup_page.visit_client_signup_page(@base_url)
    signup_page.verify_signup_page()
  end
end


When('I am on expert signup page') do
  visit_page SignupPage do |signup_page|
    signup_page.visit_expert_signup_page(@base_url)
  end
end

When('I am on trainee signup page') do
  visit_page SignupPage do |signup_page|
    signup_page.visit_trainee_signup_page(@base_url)
    signup_page.verify_signup_page()
  end
end

And ('I submit the signup form as client with all the details') do 
  visit_page SignupPage do |signup_page|
    signup_page.signup_client()
  end
end

And ('I submit the signup form as indiviual expert with all the details') do 
  visit_page SignupPage do |signup_page|
    signup_page.signup_individual_expert()
  end
end

And ('I submit the signup form as expert of firm member with all the details') do 
  visit_page SignupPage do |signup_page|
    signup_page.signup_firmMember_expert()
  end
end

And ('I submit the signup form as trainee with all the details') do 
  visit_page SignupPage do |signup_page|
    signup_page.signup_trainee()
  end
end

Then('I should be able to successfully signup') do
  visit_page SignupPage do |signup_page|
    
  end
end