class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question successfully added!"
      respond_to do |format|
        format.html { redirect_to questions_path}
        format.js
        end
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Question successfully updated!"
      respond_to do |format|
        format.html { redirect_to questions_path}
        format.js
        end
    else
      render :edit
    end
  end

  def vote
    respond_to do |format|
      format.html { redirect_to questions_path}
      format.js
      end
  end


  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Question successfully deleted."
    respond_to do |format|
          format.html { redirect_to questions_path }
          format.js
        end
      end

  private
  def question_params
    params.require(:question).permit(:option_one, :option_two)
  end

end
