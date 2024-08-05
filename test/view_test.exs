defmodule GoalGetterTest do
  use ExUnit.Case

  alias View

  describe "list_tasks/0" do
    test "returns a list of tasks" do
      tasks = View.goal_list()
      expected_tasks = [
        %{id: 1, title: "Read Book", completed: false},
        %{id: 2, title: "Exercise", completed: false},
        %{id: 3, title: "Complete project", completed: false}
      ]

      assert tasks == expected_tasks
    end
  end

  describe "view_tasks/0" do
    test "prints the list of tasks" do
      output = View.view_active_goals()


      expected_output = """
      ID: 1, Title: Read Book, Completed: false
      ID: 2, Title: Exercise, Completed: false
      ID: 3, Title: Complete project, Completed: false
      """

      assert output == String.trim(expected_output)
    end
  end
end
