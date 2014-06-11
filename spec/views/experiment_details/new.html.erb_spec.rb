require 'spec_helper'

describe "experiment_details/new" do
  before(:each) do
    assign(:experiment_detail, stub_model(ExperimentDetail,
      :sample_id => 1,
      :platform_id => 1,
      :protocol_id => 1,
      :disease_id => 1,
      :experiment_id => 1
    ).as_new_record)
  end

  it "renders new experiment_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", experiment_details_path, "post" do
      assert_select "input#experiment_detail_sample_id[name=?]", "experiment_detail[sample_id]"
      assert_select "input#experiment_detail_platform_id[name=?]", "experiment_detail[platform_id]"
      assert_select "input#experiment_detail_protocol_id[name=?]", "experiment_detail[protocol_id]"
      assert_select "input#experiment_detail_disease_id[name=?]", "experiment_detail[disease_id]"
      assert_select "input#experiment_detail_experiment_id[name=?]", "experiment_detail[experiment_id]"
    end
  end
end
