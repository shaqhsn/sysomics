require 'spec_helper'

describe "data_processing_types/new" do
  before(:each) do
    assign(:data_processing_type, stub_model(DataProcessingType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new data_processing_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", data_processing_types_path, "post" do
      assert_select "input#data_processing_type_name[name=?]", "data_processing_type[name]"
    end
  end
end
