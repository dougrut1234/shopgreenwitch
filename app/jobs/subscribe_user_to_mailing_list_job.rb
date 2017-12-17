class SubscribeUserToMailingListJob < ApplicationJob
  queue_as :default 

  def perform(email)
    gibbon = Gibbon::Request.new
    gibbon.lists(ENV["MC_LIST"]).members.create({
      body: { email_address: email, status: "subscribed" }
    })
  end
end
