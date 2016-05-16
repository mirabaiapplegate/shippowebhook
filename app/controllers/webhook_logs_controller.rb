class WebhookLogsController < ApplicationController
  before_action :set_webhook_log, only: [:show, :edit, :update, :destroy]

  # GET /webhook_logs
  # GET /webhook_logs.json
  def index
    @webhook_logs = WebhookLog.all
  end

  # GET /webhook_logs/1
  # GET /webhook_logs/1.json
  def show
  end

  # GET /webhook_logs/new
  def new
    @webhook_log = WebhookLog.new
  end

  # GET /webhook_logs/1/edit
  def edit
  end

  # POST /webhook_logs
  # POST /webhook_logs.json
  def create
    @webhook_log = WebhookLog.new(webhook_log_params)

    respond_to do |format|
      if @webhook_log.save
        format.html { redirect_to @webhook_log, notice: 'Webhook log was successfully created.' }
        format.json { render :show, status: :created, location: @webhook_log }
      else
        format.html { render :new }
        format.json { render json: @webhook_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webhook_logs/1
  # PATCH/PUT /webhook_logs/1.json
  def update
    respond_to do |format|
      if @webhook_log.update(webhook_log_params)
        format.html { redirect_to @webhook_log, notice: 'Webhook log was successfully updated.' }
        format.json { render :show, status: :ok, location: @webhook_log }
      else
        format.html { render :edit }
        format.json { render json: @webhook_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webhook_logs/1
  # DELETE /webhook_logs/1.json
  def destroy
    @webhook_log.destroy
    respond_to do |format|
      format.html { redirect_to webhook_logs_url, notice: 'Webhook log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webhook_log
      @webhook_log = WebhookLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webhook_log_params
      params.fetch(:webhook_log, {})
    end
end
