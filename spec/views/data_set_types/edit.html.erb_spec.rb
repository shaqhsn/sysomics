require 'spec_helper'

describe "data_set_types/edit" do
  before(:each) do
    @data_set_type = assign(:data_set_type, stub_model(DataSetType,
      :name => "MyString"
    ))
  end

  it "renders the edit data_set_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", data_set_type_path(@data_set_type), "post" do
      assert_select "input#data_set_type_name[name=?]", "data_set_type[name]"
    end
  end
end
