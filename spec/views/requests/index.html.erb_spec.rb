require 'rails_helper'

RSpec.describe "requests/index", :type => :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :picture_to_describe_style => "Picture To Describe Style",
        :text_to_describe_style => "MyText",
        :like_colors_materials_fabrics => "MyText",
        :dislike_colors_materials_fabrics => "MyText",
        :furniture => "MyText",
        :occupants_of_house => "MyText",
        :cannot_be_missed => "MyText",
        :hate_at_other_appartments => "MyText",
        :budget => 1,
        :additional_information => "MyText"
      ),
      Request.create!(
        :picture_to_describe_style => "Picture To Describe Style",
        :text_to_describe_style => "MyText",
        :like_colors_materials_fabrics => "MyText",
        :dislike_colors_materials_fabrics => "MyText",
        :furniture => "MyText",
        :occupants_of_house => "MyText",
        :cannot_be_missed => "MyText",
        :hate_at_other_appartments => "MyText",
        :budget => 1,
        :additional_information => "MyText"
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => "Picture To Describe Style".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
