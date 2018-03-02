class LovesController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_lofe, only: [:show, :edit, :update, :destroy]

  # GET /loves
  # GET /loves.json
  def index
    @loves = Love.all
  end

  # GET /loves/1
  # GET /loves/1.json
  def show
  end

  # GET /loves/new
  def new
    @lofe = Love.new
  end

  # GET /loves/1/edit
  def edit
  end

  # POST /loves
  # POST /loves.json
  def create
    @lofe = Love.new(lofe_params)

    respond_to do |format|
      if @lofe.save
        format.html { redirect_to @lofe, notice: 'Love was successfully created.' }
        format.json { render :show, status: :created, location: @lofe }
      else
        format.html { render :new }
        format.json { render json: @lofe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loves/1
  # PATCH/PUT /loves/1.json
  def update
    respond_to do |format|
      if @lofe.update(lofe_params)
        format.html { redirect_to @lofe, notice: 'Love was successfully updated.' }
        format.json { render :show, status: :ok, location: @lofe }
      else
        format.html { render :edit }
        format.json { render json: @lofe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loves/1
  # DELETE /loves/1.json
  def destroy
    @lofe.destroy
    respond_to do |format|
      format.html { redirect_to loves_url, notice: 'Love was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lofe
      @lofe = Love.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lofe_params
      params.require(:lofe).permit(:image1, :image2, :image3, :image4)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
