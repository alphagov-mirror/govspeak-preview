require 'rails_helper'

RSpec.feature "Previews", type: :feature do
  scenario "user clicks on 'some' styleguide example and sees example govspeak" do
    visit "/"
    click_on "some"

    expect(find("#govspeak_input").value).to start_with "# Govspeak"
  end

  scenario "user clicks on 'Preview it' button and sees generated preview of Govspeak as HTML" do
    visit "/"
    click_on "some"
    click_on "Preview it"

    expect(page).to have_css('h1#govspeak')
  end
end
