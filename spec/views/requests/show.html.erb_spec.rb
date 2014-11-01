require 'rails_helper'

RSpec.describe "requests/show", :type => :view do
  before(:each) do
    @request = assign(:request, Request.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Picture To Describe Style/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
