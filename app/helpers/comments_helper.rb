module CommentsHelper
  def time_diff(old_time)
    current = Time.now

    case 
      when (diff = current.year - old_time.year) > 0
        pluralize(diff, "year") + " ago"
      when (diff = current.month - old_time.month) > 0
        pluralize(diff, "month") + " ago"
      when (diff = current.day - old_time.day) > 0
        pluralize(diff, "day") + " ago"
      when (diff = current.hour - old_time.hour) > 0
        pluralize(diff, "hour") + " ago"
      when (diff = current.min - old_time.min) > 0
        pluralize(diff, "min") + " ago"
      when (diff = current.second - old_time.second) > 0
        pluralize(diff, "second") + " ago"
    end
  end


end
