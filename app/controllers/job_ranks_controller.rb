class JobRanksController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_job_rank, only: [:show, :edit, :update, :destroy]

  # GET /job_ranks
  # GET /job_ranks.json
  def index
    @job_ranks = JobRank.all
  end

  # GET /job_ranks/1
  # GET /job_ranks/1.json
  def show
  end

  # GET /job_ranks/new
  def new
    @job_rank = JobRank.new
  end

  # GET /job_ranks/1/edit
  def edit
  end

  # POST /job_ranks
  # POST /job_ranks.json
  def create
    @job_rank = JobRank.new(job_rank_params)

    respond_to do |format|
      if @job_rank.save
        format.html { redirect_to job_ranks_path, notice: 'Job rank was successfully created.' }
        format.json { render :show, status: :created, location: @job_rank }
      else
        format.html { render :new }
        format.json { render json: @job_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_ranks/1
  # PATCH/PUT /job_ranks/1.json
  def update
    respond_to do |format|
      if @job_rank.update(job_rank_params)
        format.html { redirect_to job_ranks_path, notice: 'Job rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_rank }
      else
        format.html { render :edit }
        format.json { render json: @job_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_ranks/1
  # DELETE /job_ranks/1.json
  def destroy
    @job_rank.destroy
    respond_to do |format|
      format.html { redirect_to job_ranks_url, notice: 'Job rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_rank
      @job_rank = JobRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_rank_params
      params.require(:job_rank).permit(:qestion1, :qestion2, :qt1_rank1, :qt1_rank2, :qt1_rank3, :qt2_rank1, :qt2_rank2, :qt2_rank3, :content)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
