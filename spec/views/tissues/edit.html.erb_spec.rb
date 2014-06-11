require 'spec_helper'

describe "tissues/edit" do
  before(:each) do
    @tissue = assign(:tissue, stub_model(Tissue,
      :name => "MyString"
    ))
  end

  it "renders the edit tissue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tissue_path(@tissue), "post" do
      assert_select "input#tissue_name[name=?]", "tissue[name]"
    end
  end
end
