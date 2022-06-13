 
 When('Expert uploaded resume on Autofill Page') do
    visit_page AutofillPage do |autofill|
      autofill.visit_autofill_page
      autofill.upload_resume
    end
 end
  
Then('Resume should be uploaded succesfully') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('Expert fill Linkedin URL on Autofill page and continue') do
  visit_page AutofillPage do |autofill|
    autofill.visit_autofill_page
    autofill.add_linkedln
   end
end