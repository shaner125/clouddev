require "rails_helper"

RSpec.feature "Visit single patient", :type => :feature do
  let(:user) { create(:user) }
  let(:patient) { create(:patient) }

  scenario "User goes to a single patient from the home page", js: true do
    patient
    visit root_path
    page.find(".single-post-card").click
    expect(page).to have_selector('body .modal')
    page.find('.view_info a').click
    expect(page).to have_selector('#single-post-content h3', text: patient.name)
  end

end