class JobsController < ApplicationController

  def index
    render json: Job.last
  end

  api :POST, "/jobs", "Send a job invitation"
  #error :code => 401, :desc => "Unauthorized"
  #error :code => 404, :desc => "Not Found", :meta => {:anything => "you can think of"}
  param :job, Hash do
    param :title, String, desc: "Title of the proposed job", required: true
    param :email, String, desc: "Email of the person(s) to contact for more info", required: true
  end
  description "Stop sending old fashioned emails. Start using the new API reality."
  formats ['json']
  api_version "v1"
  def create
    job = Job.new(job_params)

    if job.save
      render json: { status: :submitted }
    else
      render json: { status: :failure, message: "Invalid parameters" }
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :email)
  end

  #curl -X POST -H "Content-Type: application/json" -d '{"job":{"title":"Developer","email":"emploee@company.com"}}' http://localhost:3001/jobs.json
  #curl -X POST -d 'title=Developer&email=emploee@company.com"' http://localhost:3001/jobs
end
