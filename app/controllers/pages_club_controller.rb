class PagesClubController < ApplicationController

   before_action :logged_in_user, only: [:club]

   def club
     @users = User.all
   end


  # Confirms a logged-in user.
 def logged_in_user
   unless logged_in?

     flash[:danger] = "Please log in."
     redirect_to login_url
   end
 end

 # Confirms the correct user.

end
