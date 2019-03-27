require 'rails_helper'

RSpec.describe "notifications/new", type: :view do
  before(:each) do
    assign(:notification, Notification.new(
      :comment => "MyString",
      :user => nil
    ))
  end

  it "renders new notification form" do
    render

    assert_select "form[action=?][method=?]", notifications_path, "post" do

      assert_select "input#notification_comment[name=?]", "notification[comment]"

      assert_select "input#notification_user_id[name=?]", "notification[user_id]"
    end
  end
end
