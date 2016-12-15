class SessionsController < ApplicationController
  def new
  end

  def create
	mechanic = Mechanic.find_by_name(params[:name])
	if mechanic && mechanic.authenticate(params[:password])
				session[:mechanic_id] = mechanic.id
				redirect_to session[:return_to] || root_path
	else
		flash.now[:error] = "Invalid email/password combination"
		render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:mechanic_id] = nil
	else
		flash[:notice] = "You need to login first!"
	end
		redirect_to login_path
	end
	
	def customernew
	end
	
	def customercreate
	customer = Customer.find_by_email(params[:email])
	
	if customer and customer.authenticate(params[:password])
			session[:customer_id] = customer.id
			redirect_to session[:return_to] || root_path
	else
		flash.now[:error] = "Invalid email/password combination"
		render 'new'
	end
	
	end
	
	def customerdestroy
	if customersigned_in?
		session[:customer_id] = nil
	else
		flash[:notice] = "You need to login first!"
	end
		redirect_to customerlogin_path
	end
	
end




