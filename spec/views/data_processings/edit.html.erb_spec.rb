require 'spec_helper'

describe "data_processings/edit" do
  before(:each) do
    @data_processing = assign(:data_processing, stub_model(DataProcessing,
      :data_processing_type_id => 1,
      :software_id => "",
      :data_set_id => 1,
      :file_id => 1
    ))
  end

  it "renders the edit data_processing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", data_processing_path(@data_processing), "post" do
      assert_select "input#data_processing_data_processing_type_id[name=?]", "data_processing[data_processing_type_id]"
      assert_select "input#data_processing_software_id[name=?]", "data_processing[software_id]"
      assert_select "input#data_processing_data_set_id[name=?]", "data_processing[data_set_id]"
      assert_select "input#data_processing_file_id[name=?]", "data_processing[file_id]"
    end
  end
end
