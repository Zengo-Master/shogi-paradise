class QuestionsController < ApplicationController
  before_action :set_question, only: [:edit, :show, :destroy, :update]
  before_action :move_to_index, except: [:index, :show]

  def index
    @questions = Question.all.order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.valid?
      @question.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    if @question.destroy
      redirect_to root_path
    else
      redirect_to question_path(@question.id)
    end
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def show

  end

  private

  def question_params
    params.require(:question).permit(:image, :text, :answer, :commentary).merge(user_id: current_user.id)
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end