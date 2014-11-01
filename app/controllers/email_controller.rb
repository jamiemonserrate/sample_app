class EmailController < ApplicationController

  def form

  end

  def send_email
    RequestMailer.welcome_email('jamiemonserrate@gmail.com', params[:email][:content]).deliver
    render nothing: true
  end
end
