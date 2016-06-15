require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home |Cess and Stella Awesome App"

  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About |Cess and Stella Awesome App"
  end

  test "should get faq" do
    get faq_url
    assert_response :success
    assert_select "title", "FAQ |Cess and Stella Awesome App"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact |Cess and Stella Awesome App"
  end

end
