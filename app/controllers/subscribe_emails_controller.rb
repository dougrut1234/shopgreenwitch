class SubscribeEmailsController < ActionController::Base
  def subscribe
    email = params[:email]

    SubscribeUserToMailingListJob.perform email
  end
end
