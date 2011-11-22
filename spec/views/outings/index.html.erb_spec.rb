require 'spec_helper'

describe "outings/index.html.erb" do
  before(:each) do
    assign(:outings, [
      stub_model(Outing,
        :title => "Title",
        :description => "Description",
        :rating => 1
      ),
      stub_model(Outing,
        :title => "Title",
        :description => "Description",
        :rating => 1
      )
    ])
  end

  it "renders a list of outings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
