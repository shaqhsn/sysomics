require 'spec_helper'

describe "software_parameters/new" do
  before(:each) do
    assign(:software_parameter, stub_model(SoftwareParameter,
      :name => "MyString",
      :value => "MyString",
      :software_id => 1
    ).as_new_record)
  end

  it "renders new software_parameter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", software_parameters_path, "post" do
      assert_select "input#software_parameter_name[name=?]", "software_parameter[name]"
      assert_select "input#software_parameter_value[name=?]", "software_parameter[value]"
      assert_select "input#software_parameter_software_id[name=?]", "software_parameter[software_id]"
    end
  end
end
