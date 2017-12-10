class SubscribeUserToMailingListJob < ApplicationJob
  queue_as :default
  require 'gibbon'

  def perform(user)
    gb = Gibbon::API.new(api_key: "d54244544a1615765b16ff364fce44ce-us17")
    gb.timeout = 10
    gb.lists.subscribe({:id => ENV["c0e6bad048"], :email => {:email => home.email}, :double_optin => false})
  end
end
