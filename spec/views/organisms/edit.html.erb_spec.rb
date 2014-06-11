require 'spec_helper'

describe "organisms/edit" do
  before(:each) do
    @organism = assign(:organism, stub_model(Organism,
      :name => "MyString"
    ))
  end

  it "renders the edit organism form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organism_path(@organism), "post" do
      assert_select "input#organism_name[name=?]", "organism[name]"
    end
  end
end
