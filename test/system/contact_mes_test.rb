require "application_system_test_case"

class ContactMesTest < ApplicationSystemTestCase
  setup do
    @contact_me = contact_mes(:one)
  end

  test "visiting the index" do
    visit contact_mes_url
    assert_selector "h1", text: "Contact mes"
  end

  test "should create contact me" do
    visit contact_mes_url
    click_on "New contact me"

    fill_in "Description", with: @contact_me.description
    fill_in "Email", with: @contact_me.email
    fill_in "Name", with: @contact_me.name
    fill_in "Phone", with: @contact_me.phone
    click_on "Create Contact me"

    assert_text "Contact me was successfully created"
    click_on "Back"
  end

  test "should update Contact me" do
    visit contact_me_url(@contact_me)
    click_on "Edit this contact me", match: :first

    fill_in "Description", with: @contact_me.description
    fill_in "Email", with: @contact_me.email
    fill_in "Name", with: @contact_me.name
    fill_in "Phone", with: @contact_me.phone
    click_on "Update Contact me"

    assert_text "Contact me was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact me" do
    visit contact_me_url(@contact_me)
    click_on "Destroy this contact me", match: :first

    assert_text "Contact me was successfully destroyed"
  end
end
