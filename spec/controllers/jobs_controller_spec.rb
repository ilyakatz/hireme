require 'spec_helper'

describe JobsController do

  it "should create a job" do
    post :create, format: :json, title: "Developer", email: "none@none.com"
    assert_response 200
    body_json = JSON.parse(response.body)
    body_json["status"].should eq("submitted")
    Jobs.last.title.should eq("Developer")
  end

  it "should throw an exception if job could not be created" do
    lambda {
      post :create, format: :json, job_title: "Wrong"
    }.should raise_error
  end

  it "should return status if a job cannot be created" do
    without_apipie_validation {
      post :create, format: :json, job_title: "Wrong"
      assert_response 200
      body_json = JSON.parse(response.body)
      body_json["status"].should eq("failure")
      body_json["message"].should eq("Invalid parameters")
    }
  end
end

