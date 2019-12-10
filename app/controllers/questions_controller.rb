class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end


  def edit
    @question = Question.find(params[:id])
  end


  def update
    @question = Question.find(params[:id])
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully answered' }
      else
        format.html { render :edit }
      end
    end
  end

  
  private

  def question_params
    params.require(:question).permit(:content, :answered, answer_attributes: [:id, :_destroy, :value])
  end


end
