
class BasicInfoPage
    include PageObject
  
    button(:continue, xpath: '//button[@data-test-submit-button]')
    text_field(:hightlight_field, '')

    def visit_basicInfo_page

      @browser.goto("https://business-application-frontend.develop")
      sleep 10
      self.continue
    end

    def fill_details_basicInfo
      @browser.iframe(xpath: "(//div[contains(@class,'tox tox-tinymce')]//iframe)[1]").element(id: 'tinymce').click
      @browser.iframe(xpath: "(//div[contains(@class,'tox tox-tinymce')]//iframe)[1]").element(id: 'tinymce').send_keys "test Highlights"
      @browser.iframe(xpath: "(//div[contains(@class,'tox tox-tinymce')]//iframe)[2]").element(id: 'tinymce').click
      @browser.iframe(xpath: "(//div[contains(@class,'tox tox-tinymce')]//iframe)[2]").element(id: 'tinymce').send_keys "Pitch Test Description"
      @browser.text_field(xpath: "//input[contains(@placeholder,'201-555-0123')]").set '1234567890'
      @browser.span(xpath: "//div[@class='form-group__select country-select']//span[@class='ember-power-select-status-icon']").click
      @browser.li(xpath: "//li[text()= 'United States']").click
      @browser.text_field(xpath: "//input[@id='location']").set 'new city 110092'
      @browser.text_field(xpath: "(//*[@placeholder='Enter value'])[1]").set 'India'
      @browser.label(xpath: "//label[text()= 'Yes']").click
      @browser.label(xpath: "//label[text()= 'Female']").click
      @browser.text_field(xpath: "(//*[@placeholder='Enter value'])[1]").set '06/07/1990'
      @browser.label(xpath: "//label[text()= 'No, I am not disabled']").click
      @browser.span(xpath: "//div[@data-test-dropdown-component]//span[@class= 'ember-power-select-status-icon']").click
      @browser.li(xpath: "//li[text()='Asian']").click
      @browser.label(xpath: "//label[text()= 'I am not a veteran']").click
      self.continue
    end
end
