class JobMailer < ActionMailer::Base
  default from: ENV['JOB_OFFER_RECIPIENT']

  def enquiry(job)
    @job = job
    mail(to: ENV['JOB_OFFER_RECIPIENT'],
         subject: '[hireme] New Job Offer')
  end

end
