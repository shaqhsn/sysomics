require 'spec_helper'

describe "strains/new" do
  before(:each) do
    assign(:strain, stub_model(Strain,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new strain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", strains_path, "post" do
      assert_select "input#strain_name[name=?]", "strain[name]"
    end
  end
end
