class CreateIptableLogs < ActiveRecord::Migration
  def change
    create_table :iptable_logs do |t|
      t.string :user_id
      t.text :user_data

      t.timestamps
    end
  end
end
