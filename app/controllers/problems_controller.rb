class ProblemsController < ApplicationController
  
  def index
  end
  
  def show
    @problem = Problem.find(params[:id])
  end
  
  def new
  end
  
  def edit
    #@problem = Problem.find(params[:id])
  end

  def update
    @problem = Problem.find(params[:id])

    if @problem.update(problem_params)
      redirect_to @problem
    else
      render 'edit'
    end
  end

  def create
    @problem = Problem.new(problem_params)
    
    @problem.save
    redirect_to @problem
  end

  private
    def problem_params
      params.require(:problem).permit(:problem_name, :problem_des, :user_name, :prob_type)
    end
end
