module ApplicationHelper
  def plural(num, str)
    num > 1 ? "#{num} #{str}s" : "#{num} #{str}"
  end
end
