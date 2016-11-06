module ApplicationHelper
	def signed_in?
	if session[:mechanic_id].nil?
		return
	else
		@current_mechanic = Mechanic.find_by_id(session[:mechanic_id])
	end
	

end
end
