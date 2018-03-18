class LifeRankingsController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_life_ranking, only: [:show, :edit, :update, :destroy]

  # GET /life_rankings
  # GET /life_rankings.json
  def index
    @life_rankings = LifeRanking.all
  end

  # GET /life_rankings/1
  # GET /life_rankings/1.json
  def show
  end

  # GET /life_rankings/new
  def new
    @life_ranking = LifeRanking.new
  end

  # GET /life_rankings/1/edit
  def edit
  end

  # POST /life_rankings
  # POST /life_rankings.json
  def create
    @life_ranking = LifeRanking.new(life_ranking_params)

    respond_to do |format|
      if @life_ranking.save
        format.html { redirect_to life_pages_url, notice: 'Life ranking was successfully created.' }
        format.json { render :show, status: :created, location: @life_ranking }
      else
        format.html { render :new }
        format.json { render json: @life_ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_rankings/1
  # PATCH/PUT /life_rankings/1.json
  def update
    respond_to do |format|
      if @life_ranking.update(life_ranking_params)
        format.html { redirect_to life_pages_url, notice: 'Life ranking was successfully updated.' }
        format.json { render :show, status: :ok, location: @life_ranking }
      else
        format.html { render :edit }
        format.json { render json: @life_ranking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_rankings/1
  # DELETE /life_rankings/1.json
  def destroy
    @life_ranking.destroy
    respond_to do |format|
      format.html { redirect_to life_pages_url, notice: 'Life ranking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_ranking
      @life_ranking = LifeRanking.find(params[:id])
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_ranking_params
      params.require(:life_ranking).permit(:rank1, :rank2, :rank3, :abordrank1, :abordrank2, :abordrank3)
    end
end
