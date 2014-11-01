class EmailController < ApplicationController

  def form

  end

  def send_email
    Rails.logger.error "*"*100
    Rails.logger.error Request.find(params[:request_id]).email
    RequestMailer.welcome_email(Request.find(params[:request_id]).email, params[:email][:content]).deliver
    render nothing: true
  end
end
