defmodule View do
  def goal_list do
    [
      %{
        id: 1,
        title: "Read Book",
        completed: false
      },
      %{
        id: 2,
        title: "Exercise",
        completed: false
      },
      %{
        id: 3,
        title: "Complete project",
        completed: false
      }
    ]
  end
  def view_active_goals do
    tasks = goal_list()
    list = Enum.map(tasks, fn task ->
      "ID: #{task.id}, Title: #{task.title}, Completed: #{task.completed}"
    end)
    Enum.join(list, "\n")
  end
end
