class SchoolRanksController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_school_rank, only: [:show, :edit, :update, :destroy]

  # GET /school_ranks
  # GET /school_ranks.json
  def index
    @school_ranks = SchoolRank.all
  end

  # GET /school_ranks/1
  # GET /school_ranks/1.json
  def show
  end

  # GET /school_ranks/new
  def new
    @school_rank = SchoolRank.new
  end

  # GET /school_ranks/1/edit
  def edit
  end

  # POST /school_ranks
  # POST /school_ranks.json
  def create
    @school_rank = SchoolRank.new(school_rank_params)

    respond_to do |format|
      if @school_rank.save
        format.html { redirect_to @school_rank, notice: 'School rank was successfully created.' }
        format.json { render :show, status: :created, location: @school_rank }
      else
        format.html { render :new }
        format.json { render json: @school_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_ranks/1
  # PATCH/PUT /school_ranks/1.json
  def update
    respond_to do |format|
      if @school_rank.update(school_rank_params)
        format.html { redirect_to @school_rank, notice: 'School rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_rank }
      else
        format.html { render :edit }
        format.json { render json: @school_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_ranks/1
  # DELETE /school_ranks/1.json
  def destroy
    @school_rank.destroy
    respond_to do |format|
      format.html { redirect_to school_ranks_url, notice: 'School rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_rank
      @school_rank = SchoolRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_rank_params
      params.require(:school_rank).permit(:qestion1, :qestion2, :qt1_rank1, :qt1_rank2, :qt1_rank3, :qt2_rank1, :qt2_rank2, :qt2_rank3, :content)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
