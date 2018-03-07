class MenSnapsController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_men_snap, only: [:show, :edit, :update, :destroy]

  # GET /men_snaps
  # GET /men_snaps.json
  def index
    @men_snaps = MenSnap.all
  end

  # GET /men_snaps/1
  # GET /men_snaps/1.json
  def show
  end

  # GET /men_snaps/new
  def new
    @men_snap = MenSnap.new
  end

  # GET /men_snaps/1/edit
  def edit
  end

  # POST /men_snaps
  # POST /men_snaps.json
  def create
    @men_snap = MenSnap.new(men_snap_params)

    respond_to do |format|
      if @men_snap.save
        format.html { redirect_to men_snaps_path, notice: 'Men snap was successfully created.' }
        format.json { render :show, status: :created, location: @men_snap }
      else
        format.html { render :new }
        format.json { render json: @men_snap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_snaps/1
  # PATCH/PUT /men_snaps/1.json
  def update
    respond_to do |format|
      if @men_snap.update(men_snap_params)
        format.html { redirect_to men_snaps_path, notice: 'Men snap was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_snap }
      else
        format.html { render :edit }
        format.json { render json: @men_snap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_snaps/1
  # DELETE /men_snaps/1.json
  def destroy
    @men_snap.destroy
    respond_to do |format|
      format.html { redirect_to men_snaps_url, notice: 'Men snap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_snap
      @men_snap = MenSnap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_snap_params
      params.require(:men_snap).permit(:men_image, :name,:gakubu,:grade,:circle,:content)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
