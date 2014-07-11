require 'spec_helper'

describe "assets/new" do
  before(:each) do
    assign(:asset, stub_model(Asset,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", assets_path, "post" do
      assert_select "input#asset_user_id[name=?]", "asset[user_id]"
    end
  end
end
