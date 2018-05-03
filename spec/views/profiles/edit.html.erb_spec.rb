require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :state => "MyString",
      :suburb => "MyString",
      :postcode => "MyString",
      :qualifications => "MyText",
      :work_experience => "MyText",
      :facebook_account => "MyString",
      :twitter_account => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[address]"

      assert_select "input[name=?]", "profile[state]"

      assert_select "input[name=?]", "profile[suburb]"

      assert_select "input[name=?]", "profile[postcode]"

      assert_select "textarea[name=?]", "profile[qualifications]"

      assert_select "textarea[name=?]", "profile[work_experience]"

      assert_select "input[name=?]", "profile[facebook_account]"

      assert_select "input[name=?]", "profile[twitter_account]"

      assert_select "input[name=?]", "profile[status]"
    end
  end
end
