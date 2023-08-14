require 'rails_helper'

RSpec.describe "to_dos/index", type: :view do
  before(:each) do
    assign(:to_dos, [
      ToDo.create!(
        task: "Task",
        isComplete: false
      ),
      ToDo.create!(
        task: "Task",
        isComplete: false
      )
    ])
  end

  it "renders a list of to_dos" do
    render
    assert_select "tr>td", text: "Task".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
