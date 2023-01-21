class EmployeesController < ApplicationController
def index
		@employees = Employee.all	
	end

	def new
		@employees = Employee.new		
	end

	def create

    @employee = Company.last.employees.new(employees_params)
    if @employee.save
      redirect_to root_path
		
   end
   end

   def show
    @employee = Employee.find(params[:id])
   end

   def edit
   @employee = Employee.find(params[:id])
   end

  def update
  @employee = Employee.find(params[:id])
  @employee.update(employee_params)
  redirect_to root_path
  end

  def destroy
  @employee = Employee.find( params[:id])
  @employee.destroy
  redirect_to root_path
  end

 
   def  employees_params
  params.require(:employee).permit(:employee_name)
   	
   end
  end

