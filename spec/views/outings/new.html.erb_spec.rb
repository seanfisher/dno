require 'spec_helper'

describe "outings/new.html.erb" do
  before(:each) do
    assign(:outing, stub_model(Outing,
      :title => "MyString",
      :description => "MyString",
      :rating => 1
    ).as_new_record)
  end

  it "renders new outing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => outings_path, :method => "post" do
      assert_select "input#outing_title", :name => "outing[title]"
      assert_select "input#outing_description", :name => "outing[description]"
      assert_select "input#outing_rating", :name => "outing[rating]"
    end
  end
end
