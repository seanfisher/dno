require 'spec_helper'

describe "activities/edit.html.erb" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :title => "MyString",
      :duration => 1,
      :price => "9.99",
      :description => "MyString",
      :location => "MyString",
      :attribute_id => 1
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path(@activity), :method => "post" do
      assert_select "input#activity_title", :name => "activity[title]"
      assert_select "input#activity_duration", :name => "activity[duration]"
      assert_select "input#activity_price", :name => "activity[price]"
      assert_select "input#activity_description", :name => "activity[description]"
      assert_select "input#activity_location", :name => "activity[location]"
      assert_select "input#activity_attribute_id", :name => "activity[attribute_id]"
    end
  end
end
