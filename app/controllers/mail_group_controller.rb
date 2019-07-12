class MailGroupController < ApplicationController
  before_action :set_mail_groups

  def index
  end

  def send_email
    SpamMailer.with(Recipient.first.email).test_email.deliver_now
    redirect_to mail_group_index_path
  end

  private

  def set_mail_groups
    @mail_groups = MailGroup.all
  end
end
