class CampusRanksController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_campus_rank, only: [:show, :edit, :update, :destroy]

  # GET /campus_ranks
  # GET /campus_ranks.json
  def index
    @campus_ranks = CampusRank.all
  end

  # GET /campus_ranks/1
  # GET /campus_ranks/1.json
  def show
  end

  # GET /campus_ranks/new
  def new
    @campus_rank = CampusRank.new
  end

  # GET /campus_ranks/1/edit
  def edit
  end

  # POST /campus_ranks
  # POST /campus_ranks.json
  def create
    @campus_rank = CampusRank.new(campus_rank_params)

    respond_to do |format|
      if @campus_rank.save
        format.html { redirect_to @campus_rank, notice: 'Campus rank was successfully created.' }
        format.json { render :show, status: :created, location: @campus_rank }
      else
        format.html { render :new }
        format.json { render json: @campus_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campus_ranks/1
  # PATCH/PUT /campus_ranks/1.json
  def update
    respond_to do |format|
      if @campus_rank.update(campus_rank_params)
        format.html { redirect_to @campus_rank, notice: 'Campus rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @campus_rank }
      else
        format.html { render :edit }
        format.json { render json: @campus_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campus_ranks/1
  # DELETE /campus_ranks/1.json
  def destroy
    @campus_rank.destroy
    respond_to do |format|
      format.html { redirect_to campus_ranks_url, notice: 'Campus rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campus_rank
      @campus_rank = CampusRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campus_rank_params
      params.require(:campus_rank).permit(:rank1, :rank2, :rank3)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
