require 'rails_helper'

RSpec.describe "home page", type: :request do
  it "displays the user's tweets", :vcr do
    get "/"
    assert_select "form#new_twitter_account" do
      assert_select "input[name=?]", "twitter_account[name]"
    end
    post "/add_account", "twitter_account[name]" => "dhh"
    get "/tweets?name=dhh"
    assert_select "h3", text: "Tweets for DHH"
  end
end