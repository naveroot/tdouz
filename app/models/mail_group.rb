class MailGroup < ApplicationRecord
  has_many :mail_groups_recipients
  has_many :recipients, through: :mail_groups_recipients
end
