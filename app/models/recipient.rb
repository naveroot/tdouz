class Recipient < ApplicationRecord
  has_many :mail_groups_recipients
  has_many :mail_groups, through: :mail_groups_recipients
end
