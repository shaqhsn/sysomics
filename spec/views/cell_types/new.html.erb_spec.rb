require 'spec_helper'

describe "cell_types/new" do
  before(:each) do
    assign(:cell_type, stub_model(CellType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new cell_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cell_types_path, "post" do
      assert_select "input#cell_type_name[name=?]", "cell_type[name]"
    end
  end
end
