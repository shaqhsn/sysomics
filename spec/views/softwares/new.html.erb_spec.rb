require 'spec_helper'

describe "softwares/new" do
  before(:each) do
    assign(:software, stub_model(Software,
      :name => "MyString",
      :version => "MyString"
    ).as_new_record)
  end

  it "renders new software form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", softwares_path, "post" do
      assert_select "input#software_name[name=?]", "software[name]"
      assert_select "input#software_version[name=?]", "software[version]"
    end
  end
end
