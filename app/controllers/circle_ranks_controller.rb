class CircleRanksController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_circle_rank, only: [:show, :edit, :update, :destroy]

  # GET /circle_ranks
  # GET /circle_ranks.json
  def index
    @circle_ranks = CircleRank.all
  end

  # GET /circle_ranks/1
  # GET /circle_ranks/1.json
  def show
  end

  # GET /circle_ranks/new
  def new
    @circle_rank = CircleRank.new
  end

  # GET /circle_ranks/1/edit
  def edit
  end

  # POST /circle_ranks
  # POST /circle_ranks.json
  def create
    @circle_rank = CircleRank.new(circle_rank_params)

    respond_to do |format|
      if @circle_rank.save
        format.html { redirect_to circle_ranks_path, notice: 'Circle rank was successfully created.' }
        format.json { render :show, status: :created, location: @circle_rank }
      else
        format.html { render :new }
        format.json { render json: @circle_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circle_ranks/1
  # PATCH/PUT /circle_ranks/1.json
  def update
    respond_to do |format|
      if @circle_rank.update(circle_rank_params)
        format.html { redirect_to circle_ranks_path, notice: 'Circle rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @circle_rank }
      else
        format.html { render :edit }
        format.json { render json: @circle_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circle_ranks/1
  # DELETE /circle_ranks/1.json
  def destroy
    @circle_rank.destroy
    respond_to do |format|
      format.html { redirect_to circle_ranks_url, notice: 'Circle rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle_rank
      @circle_rank = CircleRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circle_rank_params
      params.require(:circle_rank).permit(:qestion1, :qestion2, :qestion3, :qt1_rank1, :qt1_rank2, :qt1_rank3, :qt2_rank1, :qt2_rank2, :qt2_rank3, :qt3_rank1, :qt3_rank2, :qt3_rank3)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
