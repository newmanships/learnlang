class CorrectAnswersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_correct_answer, only: [:show, :edit, :update, :destroy]

  # GET /correct_answers
  # GET /correct_answers.json
  def index
    @correct_answers = CorrectAnswer.all
  end

  # GET /correct_answers/1
  # GET /correct_answers/1.json
  def show
  end

  # GET /correct_answers/new
  def new
    @correct_answer = CorrectAnswer.new
  end

  # GET /correct_answers/1/edit
  def edit
  end

  # POST /correct_answers
  # POST /correct_answers.json
  def create
    @correct_answer = CorrectAnswer.new(correct_answer_params)

    respond_to do |format|
      if @correct_answer.save
        format.html { redirect_to @correct_answer, notice: 'Correct answer was successfully created.' }
        format.json { render :show, status: :created, location: @correct_answer }
      else
        format.html { render :new }
        format.json { render json: @correct_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /correct_answers/1
  # PATCH/PUT /correct_answers/1.json
  def update
    respond_to do |format|
      if @correct_answer.update(correct_answer_params)
        format.html { redirect_to @correct_answer, notice: 'Correct answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @correct_answer }
      else
        format.html { render :edit }
        format.json { render json: @correct_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correct_answers/1
  # DELETE /correct_answers/1.json
  def destroy
    @correct_answer.destroy
    respond_to do |format|
      format.html { redirect_to correct_answers_url, notice: 'Correct answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correct_answer
      @correct_answer = CorrectAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def correct_answer_params
      params.require(:correct_answer).permit(:question_id, :correctAnswerText)
    end
end
