require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :first_name => "First Name",
      :last_name => "Last Name",
      :address => "Address",
      :state => "State",
      :suburb => "Suburb",
      :postcode => "Postcode",
      :qualifications => "MyText",
      :work_experience => "MyText",
      :facebook_account => "Facebook Account",
      :twitter_account => "Twitter Account",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Facebook Account/)
    expect(rendered).to match(/Twitter Account/)
    expect(rendered).to match(/Status/)
  end
end
