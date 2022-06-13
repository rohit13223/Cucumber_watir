# frozen_string_literal: true

require 'watir'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Watir::Browser.new :chrome, headless:false
  @browser.driver.manage.window.resize_to(1600, 900)
  @browser.driver.manage.window.move_to(0,0)

  @base_url = "https://landing-frontend.develop.com/choose-account/"
  # Default timeout override to set to 30 seconds (default was 60)
  Watir.default_timeout = 20
end

$passed = 0
$failed = 0
$scenario_count = 0

After do |scenario|
  if scenario.status.to_s == 'passed'
    $passed = $passed + 1
  elsif scenario.status.to_s == 'failed'
    $failed = $failed + 1
  end
  $scenario_count = $scenario_count + 1
  if scenario.failed?
    screenshot = "./screenshot/FAILED_#{scenario.name.gsub(' ', '_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.driver.save_screenshot(screenshot)
    # encoded_img = @browser.driver.screenshot_as(:base64)
    embed(screenshot, 'image/png')
  end
  @browser.close
end

# at_exit do
#   require 'mail'
#   Mail.defaults do
#     delivery_method :smtp,
#                     address: 'smtp.gmail.com',
#                     openssl_verify_mode: 'none',
#                     port: 587,
#                     domain: 'gmail.com',
#                     user_name: 'user.t2602@gmail.com',
#                     password: '2wsx@WSX',
#                     authentication: 'plain'
#   end
# end

#   Mail.deliver do
#     from     'user.t2602@gmail.com'
#     to       'aslam_01@yopmail.com'
#     subject  "Automation Execution Report - Total: #{$scenario_count}, passed: #{$passed}, failed: #{$failed}"
#     body     "Hello \nPlease find the attached Automation Execution Report \nThank you"
#     add_file 'Automation_report.html'
#   end
# end
