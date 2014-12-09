class LessonsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  # GET /lessons
  # GET /lessons.json
    
  def index
    @lessons = Lesson.all
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @posts = @lesson.posts.all
    @course = @lesson.course
    lesson = Lesson.find(params[:id])
    course = Course.find(lesson.course_id)
    if defined?(course.alphabet)
      @alphabet = course.alphabet
    end
    if defined?(@alphabet.signs)
      @signs = @alphabet.signs.all.reverse
    end
    if defined? @lesson.quiz.questions.first
      @quiz = @lesson.quiz.questions.first
    end
#     @signs = @alphabet.signs.all.reverse
#     @alphabet = Alphabet.where[:course_id == Course.current]
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
    @test = 1
  end

  # GET /lessons/1/edit
  def edit
    @test = 1
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @courses = Course.all.map { |a| [a.title, a.id] }
    @sections = Section.all.map { |a| [a.title, a.id] }
    @lesson = Lesson.new(section_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:title, :body, :image, :course_id, :section_id)
    end
end
