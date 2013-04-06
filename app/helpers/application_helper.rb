module ApplicationHelper
  def status(item)
    item.completed ? " DONE" : " UNFINISHED"
  end
end
