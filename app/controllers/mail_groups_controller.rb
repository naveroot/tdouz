# frozen_string_literal: true

class MailGroupsController < ApplicationController
  before_action :set_mail_groups, only: :index
  before_action :set_mail_group, only: :show

  def index
  end

  def show

  end

  def send_spam
    SpamMailer.with(Recipient.first.email).test_email('test@test.com').deliver_now
    redirect_to mail_group_index_path
  end

  private

  def set_mail_groups
    @mail_groups = MailGroup.all
  end

  def set_mail_group
    @mail_group = MailGroup.find(params[:id])
  end
end
