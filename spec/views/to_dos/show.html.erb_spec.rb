require 'rails_helper'

RSpec.describe "to_dos/show", type: :view do
  before(:each) do
    @to_do = assign(:to_do, ToDo.create!(
      task: "Task",
      isComplete: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Task/)
    expect(rendered).to match(/false/)
  end
end
