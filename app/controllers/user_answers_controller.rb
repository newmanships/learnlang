class UserAnswersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user_answer, only: [:show, :edit, :update, :destroy]

  # GET /user_answers
  # GET /user_answers.json
  def index
    @user_answers = UserAnswer.all
  end

  # GET /user_answers/1
  # GET /user_answers/1.json
  def show
    
  end

  # GET /user_answers/new
  def new
    @user_answer = UserAnswer.new
  end

  # GET /user_answers/1/edit
  def edit
  end

  # POST /user_answers
  # POST /user_answers.json
  def create
     
    @user_answer = UserAnswer.new(user_answer_params)
    count = 0
     
    #Loop through questions indefinitely
    respond_to do |format|
      if @user_answer.save
        @question = Question.where(id: @user_answer.question_id).first
        @quiz_id = @question.quiz_id
        @questions = Question.where(quiz_id: @quiz_id)
        @numquestions = @questions.count
        @quizzes = Quiz.where(id: @quiz_id)
        @lessonId = @quizzes.first.lesson_id

        if @question.questionNum < @numquestions
          @test = @questions.where('id > ?', @question.id).order(id: :asc).first

        format.html { redirect_to :controller=>'questions', :id => @test, :action=>'show', notice: 'User answer was successfully created.'}
        else
          #format.html { redirect_to :controller=>'questions', :id=>@questions.shuffle.first.id, :action=>'show' }
          format.html { redirect_to :controller=>'questions', :id=>@questions.first.id, :action=>'show' }
        end
      else
        format.html { render :new }
        format.json { render json: @user_answer.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /user_answers/1
  # PATCH/PUT /user_answers/1.json
  def update
    respond_to do |format|
      if @user_answer.update(user_answer_params)
        format.html { redirect_to @user_answer, notice: 'User answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_answer }
      else
        format.html { render :edit }
        format.json { render json: @user_answer.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def checkAnswer
    @question = Question.where(id: params[:user_answer]['question_id'])
    @quiz_id = @question.first.quiz_id
    @questions = Question.where(quiz_id: @quiz_id)
    @numquestions = @questions.count
    @quiz = Quiz.where(id: @quiz_id)
    @total = @quiz.first.total_score
    @question_amount = @total / @numquestions
    progressbar = @question_amount * @question.first.id
    a = Array.new
        # Do something with input parameter and respond as JSON with the output
    userAnswer = params[:user_answer]['userAnswerText']
    @correct = CorrectAnswer.where(question_id: params[:user_answer]['question_id'])
    if (userAnswer == @correct[0]['correctAnswerText'])
      result = 'correct'
      a.push(result)      
    else
      result = 'wrong'
      a.push(result)
    end
    a.push(@correct[0]['correctAnswerText'])
    a.push(userAnswer)
    a.push(progressbar)
        respond_to do |format|
              format.json {render :json => {:result => a}}
        end
    
    return
     
  end

  # DELETE /user_answers/1
  # DELETE /user_answers/1.json
  def destroy
    @user_answer.destroy
    respond_to do |format|
      format.html { redirect_to user_answers_url, notice: 'User answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_user_answer
      @user_answer = UserAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_answer_params
      params.require(:user_answer).permit(:question_id, :userAnswerText, :attempt_id, :user_id)
    end
end
