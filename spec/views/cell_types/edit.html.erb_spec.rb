require 'spec_helper'

describe "cell_types/edit" do
  before(:each) do
    @cell_type = assign(:cell_type, stub_model(CellType,
      :name => "MyString"
    ))
  end

  it "renders the edit cell_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cell_type_path(@cell_type), "post" do
      assert_select "input#cell_type_name[name=?]", "cell_type[name]"
    end
  end
end
