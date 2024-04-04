require "test_helper"

class ContactMesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_me = contact_mes(:one)
  end

  test "should get index" do
    get contact_mes_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_me_url
    assert_response :success
  end

  test "should create contact_me" do
    assert_difference("ContactMe.count") do
      post contact_mes_url, params: { contact_me: { description: @contact_me.description, email: @contact_me.email, name: @contact_me.name, phone: @contact_me.phone } }
    end

    assert_redirected_to contact_me_url(ContactMe.last)
  end

  test "should show contact_me" do
    get contact_me_url(@contact_me)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_me_url(@contact_me)
    assert_response :success
  end

  test "should update contact_me" do
    patch contact_me_url(@contact_me), params: { contact_me: { description: @contact_me.description, email: @contact_me.email, name: @contact_me.name, phone: @contact_me.phone } }
    assert_redirected_to contact_me_url(@contact_me)
  end

  test "should destroy contact_me" do
    assert_difference("ContactMe.count", -1) do
      delete contact_me_url(@contact_me)
    end

    assert_redirected_to contact_mes_url
  end
end
