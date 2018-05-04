require 'rails_helper'

RSpec.describe "lessons/new", type: :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      :user => nil,
      :category => nil,
      :description => "MyString",
      :price_hr => 1
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input[name=?]", "lesson[user_id]"

      assert_select "input[name=?]", "lesson[category_id]"

      assert_select "input[name=?]", "lesson[description]"

      assert_select "input[name=?]", "lesson[price_hr]"
    end
  end
end
