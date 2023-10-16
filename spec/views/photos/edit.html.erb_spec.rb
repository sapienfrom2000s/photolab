require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  let(:photo) {
    Photo.create!()
  }

  before(:each) do
    assign(:photo, photo)
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(photo), "post" do
    end
  end
end
