require 'spec_helper'

describe "organisms/new" do
  before(:each) do
    assign(:organism, stub_model(Organism,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new organism form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organisms_path, "post" do
      assert_select "input#organism_name[name=?]", "organism[name]"
    end
  end
end
