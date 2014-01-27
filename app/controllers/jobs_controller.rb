class JobsController < ApplicationController

  def index
    render json: Job.last
  end

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
    params.slice(:title, :email).permit(:title, :email)
  end

  #curl -X POST -H "Content-Type: application/json" -d '{"title":"Developer","email":"emploee@company.com"}' http://localhost:3000/jobs
end
