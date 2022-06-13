# frozen_string_literal: true

class SigninPage
  include PageObject

  link(:loginPage_button, xpath: '//a[text()="Login"]')
  text_field(:email, id: 'signInName')
  text_field(:password, id: 'password')
  button(:login, id: 'next')

  def visit_sign_in_page(base_url)
    @browser.goto("#{base_url}")
    self.loginPage_button
  end

  def verify_signin_page
    @browser.wait_until do
      url = @browser.url.include? 'https://itarpb2cdevs.com/'
      url == true
    end
    sleep(5)
    @browser.h3(xpath: "//h3[contains(text(),'Experfy TalentClouds')]").wait_until(&:present?)
  end
  
  def signin_user(email, password)
      self.email = email
      self.password = password
      login
      sleep(10)
    end
  end

  def verify_client_dashboard
    @browser.wait_until do
      text = @browser.text.include? 'Your platform for proactive recruiting'
      text == true
    end
  end

  def verify_expert_dashboard
    @browser.wait_until do
      sleep(5)
      text = @browser.text.include? 'Your platform for proactive recruiting'
      text == true
    end
  end
  
  def verify_trainee_dashboard
    @browser.wait_until do
      text = @browser.text.include? 'Your platform for proactive recruiting'
      text == true
    end
  end

  def verify_signin_validation
    @browser.wait_until do
      text = @browser.text.include? "We can't seem to find your account"
      text == true
    end
  end