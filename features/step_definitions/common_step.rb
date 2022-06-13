# frozen_string_literal: true

Then 'I should see {string}' do |content|
  @browser.wait_until do
   text_data = @browser.text.include? (content)
   text_data == true
  end
end

Then 'I should not see {string}' do |content|
  @browser.wait_until do
   text_data = @browser.text.include? (content)
   text_data == false
  end
end

Then 'I should see {string} page' do |page_title|
	@browser.wait_until do
    page_title= @browser.title.include? page_title
    page_title ==true
  end
end