require 'spec_helper'

describe "attributes/new.html.erb" do
  before(:each) do
    assign(:attribute, stub_model(Attribute,
      :title => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attributes_path, :method => "post" do
      assert_select "input#attribute_title", :name => "attribute[title]"
      assert_select "input#attribute_description", :name => "attribute[description]"
    end
  end
end
