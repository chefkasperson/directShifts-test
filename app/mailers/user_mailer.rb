class UserMailer < ApplicationMailer
    default from: 'chefkasperson@gmail.com'

    def referral_email(user, email)
        @user = user
        @email = email
        
        mail to: @email, subject: "#{@user.email} has sent you a referral!"

    end
end
