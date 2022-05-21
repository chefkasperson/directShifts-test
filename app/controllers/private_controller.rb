class PrivateController < ApplicationController
  def send_email
    @user = User.find(params[:options][:user][:id])
    @email = params[:options][:email]
    if User.where("email = ?", @email).first
      render json: {
        message: "Your referral is already a member, no message has been sent."
      }
    else
      UserMailer.referral_email(@user, @email).deliver_now
      render json: {
        message: "Your email has been sent"
      }
    end
  end
end