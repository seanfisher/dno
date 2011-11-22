require 'spec_helper'

describe "outings/show.html.erb" do
  before(:each) do
    @outing = assign(:outing, stub_model(Outing,
      :title => "Title",
      :description => "Description",
      :rating => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
