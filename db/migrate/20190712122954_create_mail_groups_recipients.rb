class CreateMailGroupsRecipients < ActiveRecord::Migration[6.0]
  def change
    create_table :mail_groups_recipients do |t|

      t.belongs_to :mail_group, index: true
      t.belongs_to :recipient, index: true

      t.timestamps
    end
  end
end
