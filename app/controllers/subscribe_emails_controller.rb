class SubscribeEmailsController < ActionController::Base
  def subscribe
    email = params[:email]

    SubscribeUserToMailingListJob.perform_later email
  end
end
