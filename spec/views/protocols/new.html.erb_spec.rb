require 'spec_helper'

describe "protocols/new" do
  before(:each) do
    assign(:protocol, stub_model(Protocol,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new protocol form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", protocols_path, "post" do
      assert_select "input#protocol_name[name=?]", "protocol[name]"
    end
  end
end
