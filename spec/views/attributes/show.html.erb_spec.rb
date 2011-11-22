require 'spec_helper'

describe "attributes/show.html.erb" do
  before(:each) do
    @attribute = assign(:attribute, stub_model(Attribute,
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
