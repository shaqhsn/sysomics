require 'spec_helper'

describe "data_processing_types/edit" do
  before(:each) do
    @data_processing_type = assign(:data_processing_type, stub_model(DataProcessingType,
      :name => "MyString"
    ))
  end

  it "renders the edit data_processing_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", data_processing_type_path(@data_processing_type), "post" do
      assert_select "input#data_processing_type_name[name=?]", "data_processing_type[name]"
    end
  end
end
