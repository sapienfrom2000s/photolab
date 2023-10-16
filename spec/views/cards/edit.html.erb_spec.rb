require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  let(:card) {
    Card.create!()
  }

  before(:each) do
    assign(:card, card)
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(card), "post" do
    end
  end
end
