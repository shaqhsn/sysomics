require 'open-uri'
require 'net/ssh'
require 'net/sftp'

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  # GET /projects
  # GET /projects.json
  def index
    #@projects = Project.includes(:assets)#to avoid N+1 queries in your view,
    @projects=Project.all
        @assets = Asset.joins(:project)

  end

  # GET /projects/1
  # GET /projects/1.json
  def show
   #@assets = @project.assets.all

  end

  # GET /projects/new
  def new
    @project = Project.new
    @asset = @project.assets.build
    #    @project.assets.build
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
	#@project.assets.build
    respond_to do |format|
        if @project.save
            if params[:assets] && params[:assets]['attachment'] 
               params[:assets]['attachment'].each do |a|
                 @asset = @project.assets.create!(:attachment => a,:assetable_id => @project.id,:user_id=>@project.user.id) 
             end
            end
            format.html { redirect_to @project, notice: 'Project was successfully created.' }
            format.json { render :show, status: :created, location: @project }
        else #if save else
            format.html { render :new }
            format.json { render json: @project.errors, status: :unprocessable_entity }
        end
    end #respond to 
  end
  


  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
 def update
    respond_to do |format|
      if @project.update(project_params)
      	
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
   # project = @project.find_by_id(params[:id])
          @project =  Project.find(params[:id])
           @assets =  @project.assets
      if @project 
           @assets.each do|asset|
				file_name=File.basename(asset.attachment.url)
				file_url=File.basename(asset.attachment.url)
				filepath="/crap/uploads_from_sysomics/uploads"
				download_path=@project.user.id.to_s+'/'+asset.id.to_s
				file_partly=File.join(filepath,download_path )
				file=File.join(file_partly,file_name)
				Net::SFTP.start('glenn.c3se.chalmers.se', 'crap', :password => 'crap') do |sftp|
        		data = sftp.download!(file)
        		#then again, use the "send_data" method to send the above binary "data" as file. 
        		send_data data, :filename =>file_name 	
        		`redirect_to @project and return` 
        	end
        end
      else
        flash[:error] = "YOU DO NOT HAVE ACCESS TO THIS PROJECT"
        redirect_to root_url 
      end
end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:user_id, :experiment_id, :publication_id, :title, :summary, :start_date, :end_date,assets_attributes: [:id, :project_id, :attachment,:user_id,:assetable_id,:assetable_type,:_destroy] )
    end
    
end


