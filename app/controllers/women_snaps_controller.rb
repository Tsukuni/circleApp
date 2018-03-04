class WomenSnapsController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_women_snap, only: [:show, :edit, :update, :destroy]

  # GET /women_snaps
  # GET /women_snaps.json
  def index
    @women_snaps = WomenSnap.all
  end

  # GET /women_snaps/1
  # GET /women_snaps/1.json
  def show
  end

  # GET /women_snaps/new
  def new
    @women_snap = WomenSnap.new
  end

  # GET /women_snaps/1/edit
  def edit
  end

  # POST /women_snaps
  # POST /women_snaps.json
  def create
    @women_snap = WomenSnap.new(women_snap_params)

    respond_to do |format|
      if @women_snap.save
        format.html { redirect_to women_snaps_path, notice: 'Women snap was successfully created.' }
        format.json { render :show, status: :created, location: @women_snap }
      else
        format.html { render :new }
        format.json { render json: @women_snap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /women_snaps/1
  # PATCH/PUT /women_snaps/1.json
  def update
    respond_to do |format|
      if @women_snap.update(women_snap_params)
        format.html { redirect_to women_snaps_path, notice: 'Women snap was successfully updated.' }
        format.json { render :show, status: :ok, location: @women_snap }
      else
        format.html { render :edit }
        format.json { render json: @women_snap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /women_snaps/1
  # DELETE /women_snaps/1.json
  def destroy
    @women_snap.destroy
    respond_to do |format|
      format.html { redirect_to women_snaps_url, notice: 'Women snap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_women_snap
      @women_snap = WomenSnap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def women_snap_params
      params.require(:women_snap).permit(:women_image, :name)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
