require 'spec_helper'

describe "strains/edit" do
  before(:each) do
    @strain = assign(:strain, stub_model(Strain,
      :name => "MyString"
    ))
  end

  it "renders the edit strain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", strain_path(@strain), "post" do
      assert_select "input#strain_name[name=?]", "strain[name]"
    end
  end
end
