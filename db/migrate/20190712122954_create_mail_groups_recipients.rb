class CreateMailGroupsRecipients < ActiveRecord::Migration[6.0]
  def change
    create_table :mail_groups_recipients do |t|

      t.belongs_to :mail_groups, index: true
      t.belongs_to :recipients, index: true

      t.timestamps
    end
  end
end
