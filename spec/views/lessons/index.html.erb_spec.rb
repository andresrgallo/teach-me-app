require 'rails_helper'

RSpec.describe "lessons/index", type: :view do
  before(:each) do
    assign(:lessons, [
      Lesson.create!(
        :user => nil,
        :category => nil,
        :description => "Description",
        :price_hr => 2
      ),
      Lesson.create!(
        :user => nil,
        :category => nil,
        :description => "Description",
        :price_hr => 2
      )
    ])
  end

  it "renders a list of lessons" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
