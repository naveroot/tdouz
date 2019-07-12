class MailGroupsRecipient < ApplicationRecord
  belongs_to :mail_group
  belongs_to :recipient
end
