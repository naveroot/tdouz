class SpamMailer < ApplicationMailer

  def test_email(email_list)
    mail to: email_list, subject: 'TEST EMAIL'
  end
end
