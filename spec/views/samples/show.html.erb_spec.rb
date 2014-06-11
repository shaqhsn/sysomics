require 'spec_helper'

describe "samples/show" do
  before(:each) do
    @sample = assign(:sample, stub_model(Sample,
      :name => "Name",
      :title => "Title",
      :cell_type_id => 1,
      :tissue_id => 2,
      :organism_id => 3,
      :molecule_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
