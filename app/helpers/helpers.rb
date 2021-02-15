class Helpers
  
  def current_user(session_hash)
    User.find_by(id: session_hash[:user_id])
  end
  
  def is_logged_in?(session_hash)
    if session_hash[:user_id]
      true
    else
      false
    end
  end
  
  
end