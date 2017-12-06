class HomeController < ApplicationController
  def index
@list_id = ENV["c0e6bad048"]
 gibbon = Gibbon::Request.new

gibbon.lists(@list_id).members.create(
  body: {
    email_address: params[:email],
    status: "subscribed"
  }
)

respond_to do |format|
  format.json{render :json => {:message => "You have been Successfully added to the list! :)"}}
    end
  end
end