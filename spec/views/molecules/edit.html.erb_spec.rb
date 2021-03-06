require 'spec_helper'

describe "molecules/edit" do
  before(:each) do
    @molecule = assign(:molecule, stub_model(Molecule,
      :name => "MyString"
    ))
  end

  it "renders the edit molecule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", molecule_path(@molecule), "post" do
      assert_select "input#molecule_name[name=?]", "molecule[name]"
    end
  end
end
