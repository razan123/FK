class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end

	def create
		#binding.pry
		@project = Project.new(params[:project])
		if @project.save
			redirect_to projects_path	
		else
			redirect_to :back
		end
	end

	def index
		@projects=Project.all
		@count=Project.count
	end

	def edit
		@project = Project.find params[:id]
	end

	def update
		@project = Project.find params[:id]
		@project.update_attributes(params[:project])
		redirect_to projects_path	
		
	end 

	def destroy
		@project = Project.find params[:id]
		@project.destroy
			redirect_to projects_path	
	end

end

