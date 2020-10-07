module ApplicationHelper



def isit_me?(post_user)
  post_user == current_user
end
end
