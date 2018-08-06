require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest


  test " link log in" do

    get root_path
    assert_select "a[href=?]", text: "log in"
  end


  test "viewing the log out when connected" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { first_name: "",
                                          last_name: "" ,
                                          email: "",
                                          password: "" } }
    assert_template 'sessions/new'
    assert_select "a[href=?]", text: "log out"
 end


  test "layout links" do
    get root_path
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", signup_path
    assert_select "a[href=?]", login_path
  end


end
