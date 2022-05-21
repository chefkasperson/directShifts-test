# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def referral_email
        user = User.last
        email = 'chefkasperson@gmail.com'
        UserMailer.referral_email(user, email)
    end
end
