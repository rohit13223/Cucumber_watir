# frozen_string_literal: true

class SignupPage
    include PageObject

    $random_string =rand(2**256).to_s(36)[0..7]
    $client_email ='client' +"#{$random_string}" +'@yopmail.com'
    $expert_email ='expert' +"#{$random_string}" +'@yopmail.com'
    $trainee_email ='trainee' +"#{$random_string}" +'@yopmail.com'

    text_field(:email, id: 'email')
    text_field(:password, id: 'newPassword')
    text_field(:confirmpassword, id: 'reenterPassword')
    text_field(:firstname, id: 'givenName')
    text_field(:lastname, id: 'surname')
    text_field(:companyName, id: 'companyName')
    label(:true_option, id: 'termsAndCondition_label')
    button(:continue, id: 'continue')
    link(:clientSignup_link, class: 'panel-auth__accounts__link account--client')
    link(:expertSignup_link, class: 'panel-auth__accounts__link account--expert')
    link(:traineeSignup_link, class: 'panel-auth__accounts__link account--training')
    text_field(:firmName, id: 'firmName')
    text_field(:firmWebsite, id: 'firmWebsite')
    
    def visit_client_signup_page(base_url)
      @browser.goto("#{base_url}")
      self.clientSignup_link
    end

    def visit_expert_signup_page(base_url)
      @browser.goto("#{base_url}")
      self.expertSignup_link
    end

    def visit_trainee_signup_page(base_url)
      @browser.goto("#{base_url}")
      self.traineeSignup_link
    end
  
    def verify_signup_page
      @browser.wait_until do
        url = @browser.text.include? 'Get started by signing up today!'
        url == true
      end
      sleep(3)
    end
    
    def signup_client()
        self.email = "#{$client_email}"
        self.firstname ="Client"
        self.lastname ="#{$random_string}"
        self.companyName="Experfy"
        self.password = "P@s5word1"
        self.confirmpassword= "P@s5word1"
        @browser.execute_script("document.getElementById('termsAndCondition_True').click()")
        self.continue
        sleep(10)
      end

      def signup_individual_expert()
        self.email = "individual"+"#{$expert_email}"
        self.firstname ="Expert"
        self.lastname ="#{$random_string}"
        self.password = "P@s5word1"
        self.confirmpassword= "P@s5word1"
        @browser.execute_script("document.getElementById('termsAndCondition_True').click()")
        self.continue
        sleep(3)
        self.continue
        sleep(10)
      end

      def signup_firmMember_expert()
        self.email = "firm"+"#{$expert_email}"
        self.firstname ="Expert_firm"
        self.lastname ="#{$random_string}"
        self.password = "P@s5word1"
        self.confirmpassword= "P@s5word1"
        @browser.execute_script("document.getElementById('termsAndCondition_True').click()")
        self.continue
        sleep(3)
        @browser.input(id: "individualOrFirm_firm").click
        self.firmName = "Experfy"
        self.firmWebsite = "www.experfy.com"
        self.continue
        sleep(10)
      end

      def signup_trainee()
        self.email = "#{$trainee_email}"
        self.firstname ="Trainee"
        self.lastname ="#{$random_string}"
        self.password = "P@s5word1"
        self.confirmpassword= "P@s5word1"
        @browser.execute_script("document.getElementById('termsAndCondition_True').click()")
        self.continue
        sleep( 10)
      end  
    end