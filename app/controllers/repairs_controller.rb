class RepairsController < ApplicationController
	before_action :authorise
	
	def create
		@bike = Bike.find params[:bike_id]
		@repair = @bike.repairs.new(repair_params)
		@repair.bike_id = @current_bike.id
		@comment.save
		
			respond_to do |format|
				
				format.html{ redirect_to @bike}
			
			end
	
	
	
	
	end
	
	
	private def repair_params
		params.require(:repair).permit(:problem, :bike_id, :mechanic_id)
	end

end