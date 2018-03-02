class CampusLivesController < ApplicationController
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_campus_life, only: [:show, :edit, :update, :destroy]

  # GET /campus_lives
  # GET /campus_lives.json
  def index
    @campus_lives = CampusLife.all
  end

  # GET /campus_lives/1
  # GET /campus_lives/1.json
  def show
  end

  # GET /campus_lives/new
  def new
    @campus_life = CampusLife.new
  end

  # GET /campus_lives/1/edit
  def edit
  end

  # POST /campus_lives
  # POST /campus_lives.json
  def create
    @campus_life = CampusLife.new(campus_life_params)

    respond_to do |format|
      if @campus_life.save
        format.html { redirect_to @campus_life, notice: 'Campus life was successfully created.' }
        format.json { render :show, status: :created, location: @campus_life }
      else
        format.html { render :new }
        format.json { render json: @campus_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campus_lives/1
  # PATCH/PUT /campus_lives/1.json
  def update
    respond_to do |format|
      if @campus_life.update(campus_life_params)
        format.html { redirect_to @campus_life, notice: 'Campus life was successfully updated.' }
        format.json { render :show, status: :ok, location: @campus_life }
      else
        format.html { render :edit }
        format.json { render json: @campus_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campus_lives/1
  # DELETE /campus_lives/1.json
  def destroy
    @campus_life.destroy
    respond_to do |format|
      format.html { redirect_to campus_lives_url, notice: 'Campus life was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campus_life
      @campus_life = CampusLife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campus_life_params
      params.require(:campus_life).permit(:image1, :image2)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
