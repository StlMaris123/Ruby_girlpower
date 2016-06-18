require 'test_helper'

class LinksTestTest < ActionDispatch::IntegrationTest
   test "links are working properly" do
    get root_url
   assert_template 'static_pages/home'
   assert_select "a[href=?]", root_url  
   assert_select "a[href=?]" , about_path
   assert_select "a[href=?]" , faq_path
   assert_select "a[href=?]" , contact_path
end
  
end
