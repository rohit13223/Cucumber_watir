

When('Expert fill all the details on Basic Info page and click on continue button') do
    visit_page BasicInfoPage do |basicinfo|
      basicinfo.visit_basicInfo_page()
      basicinfo.fill_details_basicInfo()
    end
 end

 Then('Expert should be redirected to Expertise page') do
    pending # Write code here that turns the phrase above into concrete actions
end
  