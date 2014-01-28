require 'spec_helper'

describe JobsController do

  it "should create a job" do
    post :create, format: :json, title: "Developer"
    Jobs.last.title.should eq("Developer")
  end
end
