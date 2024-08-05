defmodule GoalGetter do
  def list do
    View.goal_list()
  end
  def run do
    View.view_active_goals()
  end
end
