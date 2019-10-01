module ApplicationHelper

	def user_status
		if current_user.present?
			capture do  
				concat current_user.full_name 
				concat " "
				concat link_to "Sign out", destroy_user_session_path, method: :delete
			end	
		else
			link_to "Sign in", new_user_session_path
		end	
	end
end
