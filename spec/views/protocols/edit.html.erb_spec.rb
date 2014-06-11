require 'spec_helper'

describe "protocols/edit" do
  before(:each) do
    @protocol = assign(:protocol, stub_model(Protocol,
      :name => "MyString"
    ))
  end

  it "renders the edit protocol form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", protocol_path(@protocol), "post" do
      assert_select "input#protocol_name[name=?]", "protocol[name]"
    end
  end
end
