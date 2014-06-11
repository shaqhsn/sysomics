require 'spec_helper'

describe "cell_types/show" do
  before(:each) do
    @cell_type = assign(:cell_type, stub_model(CellType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
