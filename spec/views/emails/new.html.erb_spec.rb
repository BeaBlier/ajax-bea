require 'rails_helper'

RSpec.describe "emails/new", type: :view do
  before(:each) do
    assign(:email, Email.new(
      :object => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new email form" do
    render

    assert_select "form[action=?][method=?]", emails_path, "post" do

      assert_select "input[name=?]", "email[object]"

      assert_select "textarea[name=?]", "email[body]"
    end
  end
end
