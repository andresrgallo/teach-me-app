require 'rails_helper'

RSpec.describe "lessons/edit", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :user => nil,
      :category => nil,
      :description => "MyString",
      :price_hr => 1
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input[name=?]", "lesson[user_id]"

      assert_select "input[name=?]", "lesson[category_id]"

      assert_select "input[name=?]", "lesson[description]"

      assert_select "input[name=?]", "lesson[price_hr]"
    end
  end
end
