class TcpdumpLogsController < ApplicationController
  before_action :set_tcpdump_log, only: [:show, :edit, :update, :destroy]

  # GET /tcpdump_logs
  # GET /tcpdump_logs.json
  def index
    @tcpdump_logs = TcpdumpLog.all
  end

  # GET /tcpdump_logs/1
  # GET /tcpdump_logs/1.json
  def show
  end

  # GET /tcpdump_logs/new
  def new
    @tcpdump_log = TcpdumpLog.new
  end

  # GET /tcpdump_logs/1/edit
  def edit
  end

  # POST /tcpdump_logs
  # POST /tcpdump_logs.json
  def create
    @tcpdump_log = TcpdumpLog.new(tcpdump_log_params)

    respond_to do |format|
      if @tcpdump_log.save
        format.html { redirect_to @tcpdump_log, notice: 'Tcpdump log was successfully created.' }
        format.json { render :show, status: :created, location: @tcpdump_log }
      else
        format.html { render :new }
        format.json { render json: @tcpdump_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcpdump_logs/1
  # PATCH/PUT /tcpdump_logs/1.json
  def update
    respond_to do |format|
      if @tcpdump_log.update(tcpdump_log_params)
        format.html { redirect_to @tcpdump_log, notice: 'Tcpdump log was successfully updated.' }
        format.json { render :show, status: :ok, location: @tcpdump_log }
      else
        format.html { render :edit }
        format.json { render json: @tcpdump_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcpdump_logs/1
  # DELETE /tcpdump_logs/1.json
  def destroy
    @tcpdump_log.destroy
    respond_to do |format|
      format.html { redirect_to tcpdump_logs_url, notice: 'Tcpdump log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcpdump_log
      @tcpdump_log = TcpdumpLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcpdump_log_params
      params.require(:tcpdump_log).permit(:user_id, :user_data)
    end
end
