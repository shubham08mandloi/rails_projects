class ProjectsController < ApplicationController
	def new
		@projects = Project.new
	end

	def create 
		@Project = Company.last.projects.new(projects_params)
		if @Project.save
			redirect_to root_path
		end
	end
	private
	def  projects_params
		params.require(:project).permit(:project_name)   	
	end 
end
