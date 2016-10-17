module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def suffix(count, vopros, voprosa, voprosov)
    if count%100 >= 5 && count%100 <= 20
      voprosov

    elsif count%10 == 1
      vopros

    elsif count%10 >= 2 && count%10 <= 4
      voprosa

    else
      voprosov
    end
  end
end
