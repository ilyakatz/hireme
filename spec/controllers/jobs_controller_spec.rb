require 'spec_helper'

describe JobsController do

  it "should create a job", show_in_doc: true do
    post :create, format: :json, job: {
      title: "Developer", email: "none@none.com"
    }
    assert_response 200
    body_json = JSON.parse(response.body)
    body_json["status"].should eq("submitted")
    Jobs.last.title.should eq("Developer")
  end

  it "should throw an exception if job parameters are incorrect" do
    expect {
      post :create, format: :json, job: { job_title: "Wrong" }
    }.to raise_error
  end

  it "should throw an exception if job parameter is not sent" do
    expect {
      post :create, format: :json, title: "Wrong"
    }.to raise_error
  end

  it "should return status if a job cannot be created" do
    without_apipie_validation {
      post :create, format: :json, job: { job_title: "Wrong" }
      assert_response 200
      body_json = JSON.parse(response.body)
      body_json["status"].should eq("failure")
      body_json["message"].should eq("Invalid parameters")
    }
  end
end

