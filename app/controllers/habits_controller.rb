class HabitsController < ApplicationController

  def index
    @habits = Habit.all
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    if @habit.save
      redirect_to @habit, notice: '習慣を追加しました。'
    else
      render :new
    end
  end

  def show
    @habit = Habit.find(params[:id])
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy
    redirect_to habits_path, notice: '習慣が削除されました。'
  end

  private

  def habit_params
    params.require(:habit).permit(:name)
  end
end