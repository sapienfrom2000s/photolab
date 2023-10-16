require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(),
      Card.create!()
    ])
  end

  it "renders a list of cards" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
