require 'rails_helper'

feature "Students mark register" do

  before do
    Fabricate(:student, name: "Adedotun Olusoga")
    Fabricate(:student, name: "Barack Obama")
  end

  scenario "Student records attendance" do
    visit new_attendance_path
    current_path == new_attendance_path
    select "Barack Obama", from: "Student"
    click_on "Submit"
    page.should have_css(".notice", "Barack Obama attended class today.")
    current_path == new_attendance_path
  end
end
