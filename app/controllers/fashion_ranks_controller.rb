class FashionRanksController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_fashion_rank, only: [:show, :edit, :update, :destroy]

  # GET /fashion_ranks
  # GET /fashion_ranks.json
  def index
    @fashion_ranks = FashionRank.all
  end

  # GET /fashion_ranks/1
  # GET /fashion_ranks/1.json
  def show
  end

  # GET /fashion_ranks/new
  def new
    @fashion_rank = FashionRank.new
  end

  # GET /fashion_ranks/1/edit
  def edit
  end

  # POST /fashion_ranks
  # POST /fashion_ranks.json
  def create
    @fashion_rank = FashionRank.new(fashion_rank_params)

    respond_to do |format|
      if @fashion_rank.save
        format.html { redirect_to @fashion_rank, notice: 'Fashion rank was successfully created.' }
        format.json { render :show, status: :created, location: @fashion_rank }
      else
        format.html { render :new }
        format.json { render json: @fashion_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fashion_ranks/1
  # PATCH/PUT /fashion_ranks/1.json
  def update
    respond_to do |format|
      if @fashion_rank.update(fashion_rank_params)
        format.html { redirect_to @fashion_rank, notice: 'Fashion rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @fashion_rank }
      else
        format.html { render :edit }
        format.json { render json: @fashion_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fashion_ranks/1
  # DELETE /fashion_ranks/1.json
  def destroy
    @fashion_rank.destroy
    respond_to do |format|
      format.html { redirect_to fashion_ranks_url, notice: 'Fashion rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fashion_rank
      @fashion_rank = FashionRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fashion_rank_params
      params.require(:fashion_rank).permit(:qestion1, :qestion2, :men_rank1, :men_rank2, :men_rank3, :women_rank1, :women_rank2, :women_rank3, :qt2_rank1, :qt2_rank2, :qt2_rank3, :content)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
