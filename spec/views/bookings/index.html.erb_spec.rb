require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :user => nil,
        :lesson => nil,
        :stripe_charge_id => "Stripe Charge"
      ),
      Booking.create!(
        :user => nil,
        :lesson => nil,
        :stripe_charge_id => "Stripe Charge"
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Stripe Charge".to_s, :count => 2
  end
end
