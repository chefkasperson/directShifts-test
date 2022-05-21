class PrivateController < ApplicationController
  def send_email
    @user = User.find(params[:options][:user][:id])
    @email = params[:options][:email]
    UserMailer.referral_email(@user, @email).deliver_now
    render json: {
      message: "Your email has been sent"
    }
  end
end