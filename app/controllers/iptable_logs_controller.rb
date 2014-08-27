class IptableLogsController < ApplicationController
  before_action :set_iptable_log, only: [:show, :edit, :update, :destroy]

  # GET /iptable_logs
  # GET /iptable_logs.json
  def index
    @iptable_logs = IptableLog.all
  end

  # GET /iptable_logs/1
  # GET /iptable_logs/1.json
  def show
  end

  # GET /iptable_logs/new
  def new
    @iptable_log = IptableLog.new
  end

  # GET /iptable_logs/1/edit
  def edit
  end

  # POST /iptable_logs
  # POST /iptable_logs.json
  def create
    @iptable_log = IptableLog.new(iptable_log_params)

    respond_to do |format|
      if @iptable_log.save
        format.html { redirect_to @iptable_log, notice: 'Iptable log was successfully created.' }
        format.json { render :show, status: :created, location: @iptable_log }
      else
        format.html { render :new }
        format.json { render json: @iptable_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iptable_logs/1
  # PATCH/PUT /iptable_logs/1.json
  def update
    respond_to do |format|
      if @iptable_log.update(iptable_log_params)
        format.html { redirect_to @iptable_log, notice: 'Iptable log was successfully updated.' }
        format.json { render :show, status: :ok, location: @iptable_log }
      else
        format.html { render :edit }
        format.json { render json: @iptable_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iptable_logs/1
  # DELETE /iptable_logs/1.json
  def destroy
    @iptable_log.destroy
    respond_to do |format|
      format.html { redirect_to iptable_logs_url, notice: 'Iptable log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iptable_log
      @iptable_log = IptableLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iptable_log_params
      params.require(:iptable_log).permit(:user_id, :user_data)
    end
end
