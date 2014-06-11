require 'spec_helper'

describe "platforms/edit" do
  before(:each) do
    @platform = assign(:platform, stub_model(Platform,
      :name => "MyString"
    ))
  end

  it "renders the edit platform form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", platform_path(@platform), "post" do
      assert_select "input#platform_name[name=?]", "platform[name]"
    end
  end
end
