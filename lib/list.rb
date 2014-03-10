class List
  def initialize(name)
    @list_name = name
    @tasks = []
    @priority = []
    @due_dates = []
  end

  def list_name
    @list_name
  end

  def add_task(new_task)
    new_task = Task.new(new_task)
    @tasks << new_task.description
  end

  def show_tasks
    @tasks
  end
end
