require 'spec_helper'

describe "tissues/new" do
  before(:each) do
    assign(:tissue, stub_model(Tissue,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new tissue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tissues_path, "post" do
      assert_select "input#tissue_name[name=?]", "tissue[name]"
    end
  end
end
