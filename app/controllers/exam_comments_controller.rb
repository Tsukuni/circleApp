class ExamCommentsController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_exam_comment, only: [:show, :edit, :update, :destroy]

  # GET /exam_comments
  # GET /exam_comments.json
  def index
    @exam_comments = ExamComment.all
  end

  # GET /exam_comments/1
  # GET /exam_comments/1.json
  def show
  end

  # GET /exam_comments/new
  def new
    @exam_comment = ExamComment.new
  end

  # GET /exam_comments/1/edit
  def edit
  end

  # POST /exam_comments
  # POST /exam_comments.json
  def create
    @exam_comment = ExamComment.new(exam_comment_params)

    respond_to do |format|
      if @exam_comment.save
        format.html { redirect_to exams_path, notice: 'Exam comment was successfully created.' }
        format.json { render :show, status: :created, location: @exam_comment }
      else
        format.html { render :new }
        format.json { render json: @exam_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exam_comments/1
  # PATCH/PUT /exam_comments/1.json
  def update
    respond_to do |format|
      if @exam_comment.update(exam_comment_params)
        format.html { redirect_to exams_path, notice: 'Exam comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam_comment }
      else
        format.html { render :edit }
        format.json { render json: @exam_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_comments/1
  # DELETE /exam_comments/1.json
  def destroy
    @exam_comment.destroy
    respond_to do |format|
      format.html { redirect_to exams_path, notice: 'Exam comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_comment
      @exam_comment = ExamComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_comment_params
      params.require(:exam_comment).permit(:context)
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
