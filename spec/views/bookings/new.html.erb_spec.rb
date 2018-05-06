require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      :user => nil,
      :lesson => nil,
      :stripe_charge_id => "MyString"
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input[name=?]", "booking[user_id]"

      assert_select "input[name=?]", "booking[lesson_id]"

      assert_select "input[name=?]", "booking[stripe_charge_id]"
    end
  end
end
