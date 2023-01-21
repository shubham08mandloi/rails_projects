class CompanysController < ApplicationController
	def index
		@companys = Company.all	
	end

	def new
		@companys = Company.new
end

    def create 
    	 @Company = Company.new(companys_params)
    if @Company.save
      redirect_to companys_path
		
	end
   end
 
   def  companys_params
  params.require(:company).permit(:company_name)   	
   end 

end

