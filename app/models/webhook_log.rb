class WebhookLog < ActiveRecord::Base
  serialize :jsonblob, JSON
end
