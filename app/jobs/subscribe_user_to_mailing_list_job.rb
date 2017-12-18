class SubscribeUserToMailingListJob < ApplicationJob
  queue_as :default 

  def perform(email)
    gibbon = Gibbon::Request.new
    gibbon.lists(Rails.application.secrets.mailchimp_list_id).members.create({
      body: { email_address: email, status: "subscribed" }
    })
  end
end
