class AnswersController < ApplicationController
  before_action :set_quiz
  before_action :set_question
  before_action :set_answer, only: %i[ show edit update destroy ]

  def index
    @answers = @question.answers
  end

  def show
  end

  def new
    @answer = @question.answers.build
  end

  def edit
  end


  def create
    @answer = @question.answers.build(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to question_answers_path, notice: "Answer was successfully created." }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to question_answer_path, notice: "Answer was successfully updated." }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @answer.destroy!

    respond_to do |format|
      format.html { redirect_to question_path(@question), status: :see_other, notice: "Answer was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find_by(id: params[:quiz_id])
    end

    def set_question
      @question = Question.find_by(id: params[:question_id])
    end

    def set_answer
      @answer = Answer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def answer_params
      params.expect(answer: [ :name, :istrue ])
    end

end
