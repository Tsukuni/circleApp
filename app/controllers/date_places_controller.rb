class DatePlacesController < ApplicationController
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_date_place, only: [:show, :edit, :update, :destroy]

  # GET /date_places
  # GET /date_places.json
  def index
    @date_places = DatePlace.all
  end

  # GET /date_places/1
  # GET /date_places/1.json
  def show
  end

  # GET /date_places/new
  def new
    @date_place = DatePlace.new
  end

  # GET /date_places/1/edit
  def edit
  end

  # POST /date_places
  # POST /date_places.json
  def create
    @date_place = DatePlace.new(date_place_params)

    respond_to do |format|
      if @date_place.save
        format.html { redirect_to @date_place, notice: 'Date place was successfully created.' }
        format.json { render :show, status: :created, location: @date_place }
      else
        format.html { render :new }
        format.json { render json: @date_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_places/1
  # PATCH/PUT /date_places/1.json
  def update
    respond_to do |format|
      if @date_place.update(date_place_params)
        format.html { redirect_to @date_place, notice: 'Date place was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_place }
      else
        format.html { render :edit }
        format.json { render json: @date_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_places/1
  # DELETE /date_places/1.json
  def destroy
    @date_place.destroy
    respond_to do |format|
      format.html { redirect_to date_places_url, notice: 'Date place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_place
      @date_place = DatePlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_place_params
      params.require(:date_place).permit(:name, :url, :context, :image)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
