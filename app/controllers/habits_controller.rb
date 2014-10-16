class HabitsController < ApplicationController
  def index
    @habits = Habit.all()
  end
  def show
    Habit.find(habit_id)
  end
  def edit
    Habit.find(habit_id)
  end
  def create
    @habit = Habit.new(habit_params)
    @habit.save()
    redirect_to(habit_show_path(deck_id))
  end
end
