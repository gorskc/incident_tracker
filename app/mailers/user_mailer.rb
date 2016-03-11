class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.thank_you.subject
  #
  def thank_you(user)
    @user = user
    #set to user with param: user object must be passed in to model
    @greeting = "Hi"

    mail to: "to@example.org", subject: "Thanks for signing up!"
  end
end
