class SubscribeEmailsController < ActionController::Base
  def subscribe
    email = params[:email]

    flash[:notice] = "Welcome To The Coven! Stay Tuned For CBD Updates!"
    redirect_to request.referrer
    SubscribeUserToMailingListJob.perform_later email
  end
end
