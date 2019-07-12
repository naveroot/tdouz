class CreateMailGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :mail_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
