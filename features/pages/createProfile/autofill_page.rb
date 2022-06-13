# frozen_string_literal: true

class AutofillPage
    include PageObject
  
    button(:continue, xpath: '//button[@data-test-submit-button]')

    def visit_autofill_page
    
      @browser.goto("https://google.com")
     
    end

    def upload_resume
      @browser.input(id: "upload-file").send_keys "\\testData\\test_resume.pdf"
      self.continue
    end

    def add_linkedln
      @browser.li(xpath: "//li[text()='Linkedin']").click
      @browser.input(placeholder: "Enter value").send_keys 'https://www.linkedin.com/in/rohit-4743754/'
      self.continue
    end
end
