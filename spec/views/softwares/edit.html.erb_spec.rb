require 'spec_helper'

describe "softwares/edit" do
  before(:each) do
    @software = assign(:software, stub_model(Software,
      :name => "MyString",
      :version => "MyString"
    ))
  end

  it "renders the edit software form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", software_path(@software), "post" do
      assert_select "input#software_name[name=?]", "software[name]"
      assert_select "input#software_version[name=?]", "software[version]"
    end
  end
end
