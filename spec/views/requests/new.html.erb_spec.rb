require 'rails_helper'

RSpec.describe "requests/new", :type => :view do
  before(:each) do
    assign(:request, Request.new(
      :picture_to_describe_style => "MyString",
      :text_to_describe_style => "MyText",
      :like_colors_materials_fabrics => "MyText",
      :dislike_colors_materials_fabrics => "MyText",
      :furniture => "MyText",
      :occupants_of_house => "MyText",
      :cannot_be_missed => "MyText",
      :hate_at_other_appartments => "MyText",
      :budget => 1,
      :additional_information => "MyText"
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input#request_picture_to_describe_style[name=?]", "request[picture_to_describe_style]"

      assert_select "textarea#request_text_to_describe_style[name=?]", "request[text_to_describe_style]"

      assert_select "textarea#request_like_colors_materials_fabrics[name=?]", "request[like_colors_materials_fabrics]"

      assert_select "textarea#request_dislike_colors_materials_fabrics[name=?]", "request[dislike_colors_materials_fabrics]"

      assert_select "textarea#request_furniture[name=?]", "request[furniture]"

      assert_select "textarea#request_occupants_of_house[name=?]", "request[occupants_of_house]"

      assert_select "textarea#request_cannot_be_missed[name=?]", "request[cannot_be_missed]"

      assert_select "textarea#request_hate_at_other_appartments[name=?]", "request[hate_at_other_appartments]"

      assert_select "input#request_budget[name=?]", "request[budget]"

      assert_select "textarea#request_additional_information[name=?]", "request[additional_information]"
    end
  end
end
