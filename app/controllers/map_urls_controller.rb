class MapUrlsController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_map_url, only: [:show, :edit, :update, :destroy]

  # GET /map_urls
  # GET /map_urls.json
  def index
    @map_urls = MapUrl.all
  end

  # GET /map_urls/1
  # GET /map_urls/1.json
  def show
  end

  # GET /map_urls/new
  def new
    @map_url = MapUrl.new
  end

  # GET /map_urls/1/edit
  def edit
  end

  # POST /map_urls
  # POST /map_urls.json
  def create
    @map_url = MapUrl.new(map_url_params)

    respond_to do |format|
      if @map_url.save
        format.html { redirect_to map_urls_path, notice: 'Map url was successfully created.' }
        format.json { render :show, status: :created, location: @map_url }
      else
        format.html { render :new }
        format.json { render json: @map_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_urls/1
  # PATCH/PUT /map_urls/1.json
  def update
    respond_to do |format|
      if @map_url.update(map_url_params)
        format.html { redirect_to map_urls_path, notice: 'Map url was successfully updated.' }
        format.json { render :show, status: :ok, location: @map_url }
      else
        format.html { render :edit }
        format.json { render json: @map_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_urls/1
  # DELETE /map_urls/1.json
  def destroy
    @map_url.destroy
    respond_to do |format|
      format.html { redirect_to map_urls_path, notice: 'Map url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_url
      @map_url = MapUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def map_url_params
      params.require(:map_url).permit(:url)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
