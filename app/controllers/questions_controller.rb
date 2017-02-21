class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @questions = Question.all
    if params[:upvote]
      @question = Question.find(params[:upvote])
      @question.liked_by current_user
    end
    if params[:downvote]
      @question = Question.find(params[:downvote])
      @question.disliked_by current_user
    end
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
    @question = Question.find(params[:question_id])
    @question_vote = params[:question_option]
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
    params.require(:question).permit(:option_one, :option_two, :image_one, :image_two)
  end

end
