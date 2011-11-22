require 'spec_helper'

describe "attributes/edit.html.erb" do
  before(:each) do
    @attribute = assign(:attribute, stub_model(Attribute,
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attributes_path(@attribute), :method => "post" do
      assert_select "input#attribute_title", :name => "attribute[title]"
      assert_select "input#attribute_description", :name => "attribute[description]"
    end
  end
end
