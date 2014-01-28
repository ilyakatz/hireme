require 'spec_helper'

describe JobsController do

  it "should create a job" do
    post :create, format: :json, title: "Developer"
    assert_response 200
    body_json = JSON.parse(response.body)
    body_json["status"].should eq("submitted")
    Jobs.last.title.should eq("Developer")
  end
end
