module RolesHelper
  def can_edit?(goal)
    case(current_user.role)
      when 'admin' then true
      # when 'registered' then current_user == goal.user
    when 'registered' then current_user == User.find(goal.user_id)
      else false
    end
  end
end
