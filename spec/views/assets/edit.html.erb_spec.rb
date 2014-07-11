require 'spec_helper'

describe "assets/edit" do
  before(:each) do
    @asset = assign(:asset, stub_model(Asset,
      :user_id => 1
    ))
  end

  it "renders the edit asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", asset_path(@asset), "post" do
      assert_select "input#asset_user_id[name=?]", "asset[user_id]"
    end
  end
end
