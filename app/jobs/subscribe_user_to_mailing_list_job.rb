class SubscribeUserToMailingListJob < ApplicationJob
  queue_as :default 

  def perform(email)
    gb = Gibbon::API.new
    gb.lists.subscribe({
      id: ENV["MC_LIST"],
      email: { email: email },
      double_optin: false
    })
  end
end
