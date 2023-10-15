require "rails_helper"

RSpec.describe "Login", type: :request do

  it "allows admin to login" do
    admin = create(:admin)
    get "/admins/sign_in"

    post "/admins/sign_in", :params => { :admin => {:email => admin.email, :password => admin.password} }

    follow_redirect!
    
    expect(response).to have_http_status(:ok)
  end
  
  it "denies admin to login" do
    admin = build(:admin)
    get "/admins/sign_in"
    
    post "/admins/sign_in", :params => { :admin => {:email => admin.email, :password => admin.password} }
   
    expect(response).to have_http_status(:unprocessable_entity)
  end
end

