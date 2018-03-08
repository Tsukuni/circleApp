class OriPagesController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_ori_page, only: [:show, :edit, :update, :destroy]

  # GET /ori_pages
  # GET /ori_pages.json
  def index
    @ori_pages = OriPage.all
  end

  # GET /ori_pages/1
  # GET /ori_pages/1.json
  def show
  end

  # GET /ori_pages/new
  def new
    @ori_page = OriPage.new
  end

  # GET /ori_pages/1/edit
  def edit
  end

  # POST /ori_pages
  # POST /ori_pages.json
  def create
    @ori_page = OriPage.new(ori_page_params)

    respond_to do |format|
      if @ori_page.save
        format.html { redirect_to ori_pages_url, notice: 'Ori page was successfully created.' }
        format.json { render :show, status: :created, location: @ori_page }
      else
        format.html { render :new }
        format.json { render json: @ori_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ori_pages/1
  # PATCH/PUT /ori_pages/1.json
  def update
    respond_to do |format|
      if @ori_page.update(ori_page_params)
        format.html { redirect_to ori_pages_url, notice: 'Ori page was successfully updated.' }
        format.json { render :show, status: :ok, location: @ori_page }
      else
        format.html { render :edit }
        format.json { render json: @ori_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ori_pages/1
  # DELETE /ori_pages/1.json
  def destroy
    @ori_page.destroy
    respond_to do |format|
      format.html { redirect_to ori_pages_url, notice: 'Ori page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ori_page
      @ori_page = OriPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ori_page_params
      params.require(:ori_page).permit(:ori_photo1, :ori_photo2)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
