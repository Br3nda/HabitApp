class HabitsController < ApplicationController
  def index
    @habit = Habit.new()
    @habits = Habit.all()
  end
  def show
    @habit = Habit.find(params['id'])
  end
  #def edit
  #  @habit = Habit.find(habit_id)
  #end
  def create
    habit = Habit.find_by(name: habit_params['name'])
    if not habit
      habit = Habit.new(habit_params)
      habit.save()
    end
    #todo, make the gerund record
  end
  def subscribe
  end
  def habit_params
    params.require(:habit).permit(:name)
  end

end
