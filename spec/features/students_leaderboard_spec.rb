require 'rails_helper'

RSpec.feature "Students leaderboard", type: :feature do

  before do
    Fabricate(:student, name: "Adedotun Olusoga")
    Fabricate(:student, name: "Barack Obama")
  end

  scenario "Student leaderboard shows attendance records" do
    visit root_path
    page.should have_content("Students")
    page.should have_content("Attendance")
    within("table") do
      page.should have_content("Adedotun Olusoga")
      page.should have_content("Barack Obama")
    end
    page.should have_content("Record Attendance")
    page.should have_content("Plan Absence")
  end
end

# RSpec.feature "UserAddAttendances", type: :feature do
# +  scenario "navigating to the new attendance page" do
# +    visit root_path
# +    click_on "Record Attendance"
# +    current_path.should == "/attendance/new"
# +    page.should have_content("Attendance")
# +    within("select#student") do
# +      page.should have_css("option")
# +      page.should have_content("Allison Higgenbothan")
#     end
# +  end
# +  scenario "user saves attendance" do
# +    visit root_path
# +    click_on "Record Attendance"
# +    current_path.should == "/attendance/new"
# +    page.should have_content("Attendance")
# +    click_on "Present"
# +    current_path.should == root_path
# +  end
# +end
