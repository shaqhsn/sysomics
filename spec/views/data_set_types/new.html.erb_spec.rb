require 'spec_helper'

describe "data_set_types/new" do
  before(:each) do
    assign(:data_set_type, stub_model(DataSetType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new data_set_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", data_set_types_path, "post" do
      assert_select "input#data_set_type_name[name=?]", "data_set_type[name]"
    end
  end
end
