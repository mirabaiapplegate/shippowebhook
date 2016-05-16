class WebhooksController < ApplicationController

  def create
    webhook_log = WebhookLog.new
    webhook_log.jsonblob = params
    webhook_log.save

    render text: 'OK', status: 200
  end

end
