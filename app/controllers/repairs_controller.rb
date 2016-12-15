class RepairsController < ApplicationController
	before_action :authorise
	
	def create
		@bike = Bike.find params[:bike_id]
		@repair = @bike.repairs.new(repair_params)
		@repair.mechanic_id = @current_mechanic.id
		
		##if @repair.save
			##Repairmailer.details(@mechanic).deliver
			
		##end
		
		
			respond_to do |format|
				
				format.html{ redirect_to @bike}
			
			end
		
	
	
	
	
	end
	
	
	private def repair_params
		params.require(:repair).permit(:problem, :bike_id, :mechanic_id)
	end

end