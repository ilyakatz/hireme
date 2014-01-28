require 'spec_helper'

describe JobsController do

  it "should create a job" do
    post :create, format: :json, title: "Developer"
    assert_response 200
    body_json = JSON.parse(response.body)
    body_json["status"].should eq("submitted")
    Jobs.last.title.should eq("Developer")
  end

  it "should throw an execption if job could not be created" do
    post :create, format: :json, job_title: "Wrong"
    assert_response 200
    body_json = JSON.parse(response.body)
    body_json["status"].should eq("failure")
    body_json["message"].should eq("Invalid parameters")
  end
end
