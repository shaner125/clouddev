require 'rails_helper'

RSpec.describe "notifications/index", type: :view do
  before(:each) do
    assign(:notifications, [
      Notification.create!(
        :comment => "Comment",
        :user => nil
      ),
      Notification.create!(
        :comment => "Comment",
        :user => nil
      )
    ])
  end

  it "renders a list of notifications" do
    render
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
