require 'spec_helper'

describe "molecules/new" do
  before(:each) do
    assign(:molecule, stub_model(Molecule,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new molecule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", molecules_path, "post" do
      assert_select "input#molecule_name[name=?]", "molecule[name]"
    end
  end
end
