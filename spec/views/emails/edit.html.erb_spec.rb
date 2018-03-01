require 'rails_helper'

RSpec.describe "emails/edit", type: :view do
  before(:each) do
    @email = assign(:email, Email.create!(
      :object => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit email form" do
    render

    assert_select "form[action=?][method=?]", email_path(@email), "post" do

      assert_select "input[name=?]", "email[object]"

      assert_select "textarea[name=?]", "email[body]"
    end
  end
end
