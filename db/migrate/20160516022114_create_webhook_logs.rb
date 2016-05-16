class CreateWebhookLogs < ActiveRecord::Migration
  def change
    create_table :webhook_logs do |t|
      t.text :jsonblob

      t.timestamps null: false
    end
  end
end
