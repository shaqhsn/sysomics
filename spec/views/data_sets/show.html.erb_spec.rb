require 'spec_helper'

describe "data_sets/show" do
  before(:each) do
    @data_set = assign(:data_set, stub_model(DataSet,
      :data_set_type_id => 1,
      :project_id => 2,
      :name => "Name",
      :comment => "Comment",
      :file_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Name/)
    rendered.should match(/Comment/)
    rendered.should match(/3/)
  end
end
