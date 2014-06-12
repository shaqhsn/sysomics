require 'spec_helper'

describe "data_processings/new" do
  before(:each) do
    assign(:data_processing, stub_model(DataProcessing,
      :data_processing_type_id => 1,
      :software_id => "",
      :data_set_id => 1,
      :file_id => 1
    ).as_new_record)
  end

  it "renders new data_processing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", data_processings_path, "post" do
      assert_select "input#data_processing_data_processing_type_id[name=?]", "data_processing[data_processing_type_id]"
      assert_select "input#data_processing_software_id[name=?]", "data_processing[software_id]"
      assert_select "input#data_processing_data_set_id[name=?]", "data_processing[data_set_id]"
      assert_select "input#data_processing_file_id[name=?]", "data_processing[file_id]"
    end
  end
end
