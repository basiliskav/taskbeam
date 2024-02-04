class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update]

  def index
    # If a date parameter is present, parse it and filter tasks by that date.
    # Otherwise, show all tasks or no tasks according to your preference.
    @day = params[:day] ? Date.parse(params[:day]) : Date.today
    @tasks = Task.where(day: @day).order(:created_at)
  end

  def show
  end

  def new
    @task = Task.new
    @task.day = Date.parse(params[:day]) if params[:day]
  end
 
  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    
    if @task.save
      # Redirect to show_by_day for the specific day of the task
      flash[:notice] = 'Task was successfully created.'
      redirect_to show_by_day_tasks_path(day: @task.day)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      flash[:notice] = 'Task was successfully updated.'
      redirect_to show_by_day_tasks_path(day: @task.day)
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    task_day = @task.day
    task_title = @task.title
    @task.destroy

    flash[:alert] = "Task '#{task_title}' was successfully deleted."
    redirect_to show_by_day_tasks_path(day: task_day)
  end

  def select_day
  end

  def show_by_day
    @day = Date.parse(params[:day])
    @tasks = Task.where(day: @day).order(created_at: :asc)

    respond_to do |format|
      format.html # continues to render .html.erb view
      Rails.logger.debug "Rendering PDF for tasks on #{@day}"

      format.pdf do
        render pdf: 'app/views/tasks/show_by_day.pdf.erb',
               encoding: 'UTF8'
      end
    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :details, :day, :completed)
    end
end