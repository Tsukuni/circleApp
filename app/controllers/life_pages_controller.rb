class LifePagesController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_life_page, only: [:show, :edit, :update, :destroy]

  # GET /life_pages
  # GET /life_pages.json
  def index
    @life_pages = LifePage.all
    @life_rankings = LifeRanking.all
  end

  # GET /life_pages/1
  # GET /life_pages/1.json
  def show
  end

  # GET /life_pages/new
  def new
    @life_page = LifePage.new
  end

  # GET /life_pages/1/edit
  def edit
  end

  # POST /life_pages
  # POST /life_pages.json
  def create
    @life_page = LifePage.new(life_page_params)

    respond_to do |format|
      if @life_page.save
        format.html { redirect_to life_pages_url, notice: 'Life page was successfully created.' }
        format.json { render :show, status: :created, location: @life_page }
      else
        format.html { render :new }
        format.json { render json: @life_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_pages/1
  # PATCH/PUT /life_pages/1.json
  def update
    respond_to do |format|
      if @life_page.update(life_page_params)
        format.html { redirect_to life_pages_url, notice: 'Life page was successfully updated.' }
        format.json { render :show, status: :ok, location: @life_page }
      else
        format.html { render :edit }
        format.json { render json: @life_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_pages/1
  # DELETE /life_pages/1.json
  def destroy
    @life_page.destroy
    respond_to do |format|
      format.html { redirect_to life_pages_url, notice: 'Life page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_page
      @life_page = LifePage.find(params[:id])
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_page_params
      params.require(:life_page).permit(:life_photo1, :life_photo2, :life_photo3, :life_photo4)
    end
end
