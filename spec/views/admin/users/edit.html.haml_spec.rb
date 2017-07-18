require 'rails_helper'

RSpec.describe "admin/users/edit", type: :view do
  before(:each) do
    @admin_user = assign(:admin_user, Admin::User.create!(
      :email => "MyString",
      :ship_name => "MyString",
      :ship_address => "MyString"
    ))
  end

  it "renders the edit admin_user form" do
    render

    assert_select "form[action=?][method=?]", admin_user_path(@admin_user), "post" do

      assert_select "input[name=?]", "admin_user[email]"

      assert_select "input[name=?]", "admin_user[ship_name]"

      assert_select "input[name=?]", "admin_user[ship_address]"
    end
  end
end
