require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup 
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
    get root_path
    assert_response :success
  end

  # test "should get home" do
  #   get static_pages_home_url
  #   assert_response :success
  #   assert_select "title", "#{@base_title}"
  # end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_us_path
    assert_response :success
    assert_select "title", "Contact Us | #{@base_title}"
  end

end