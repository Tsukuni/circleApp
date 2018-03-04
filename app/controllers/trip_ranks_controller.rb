class TripRanksController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_trip_rank, only: [:show, :edit, :update, :destroy]

  # GET /trip_ranks
  # GET /trip_ranks.json
  def index
    @trip_ranks = TripRank.all
  end

  # GET /trip_ranks/1
  # GET /trip_ranks/1.json
  def show
  end

  # GET /trip_ranks/new
  def new
    @trip_rank = TripRank.new
  end

  # GET /trip_ranks/1/edit
  def edit
  end

  # POST /trip_ranks
  # POST /trip_ranks.json
  def create
    @trip_rank = TripRank.new(trip_rank_params)

    respond_to do |format|
      if @trip_rank.save
        format.html { redirect_to trip_ranks_path, notice: 'Trip rank was successfully created.' }
        format.json { render :show, status: :created, location: @trip_rank }
      else
        format.html { render :new }
        format.json { render json: @trip_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_ranks/1
  # PATCH/PUT /trip_ranks/1.json
  def update
    respond_to do |format|
      if @trip_rank.update(trip_rank_params)
        format.html { redirect_to trip_ranks_path, notice: 'Trip rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_rank }
      else
        format.html { render :edit }
        format.json { render json: @trip_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_ranks/1
  # DELETE /trip_ranks/1.json
  def destroy
    @trip_rank.destroy
    respond_to do |format|
      format.html { redirect_to trip_ranks_url, notice: 'Trip rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_rank
      @trip_rank = TripRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_rank_params
      params.require(:trip_rank).permit(:qestion1, :qt1_rank1, :qt1_rank2, :qt1_rank3, :content)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
