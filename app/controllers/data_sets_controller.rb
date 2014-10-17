class DataSetsController < ApplicationController
  before_action :set_data_set, only: [:show, :edit, :update, :destroy]

  # GET /data_sets
  # GET /data_sets.json
  def index
      if current_user
          @data_sets = current_user.data_sets.includes(:assets)#to avoid N+1 queries in your view,
      else
          redirect_to signin_path, notice: 'Please sign in first.'
      end
  end

  # GET /data_sets/1
  # GET /data_sets/1.json
  def show

  end

  # GET /data_sets/new
  def new
    @data_set = DataSet.new
    @asset = @data_set.assets.build

  end

  # GET /data_sets/1/edit
  def edit
  end

  # POST /data_sets
  # POST /data_sets.json
  def create
    @data_set = current_user.data_sets.new(data_set_params)

    respond_to do |format|
        if @data_set.save
            if params[:assets] && params[:assets]['attachment'] 
               params[:assets]['attachment'].each do |a|
                 @asset = @data_set.assets.create!(:attachment => a,:assetable_id => @data_set.id,:user_id=>@data_set.project.user.id) 
             end
            end
            format.html { redirect_to @data_set, notice: 'Data Set was successfully created.' }
            format.json { render :show, status: :created, location: @project }
        else #if save else
            format.html { render :new }
            format.json { render json: @data_set.errors, status: :unprocessable_entity }
        end
    end #respond to 
  end
  

  # PATCH/PUT /data_sets/1
  # PATCH/PUT /data_sets/1.json
  def update
    respond_to do |format|
      if @data_set.update(data_set_params)
        format.html { redirect_to @data_set, notice: 'Data set was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_set }
      else
        format.html { render :edit }
        format.json { render json: @data_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_sets/1
  # DELETE /data_sets/1.json
  def destroy
    @data_set.destroy
    respond_to do |format|
      format.html { redirect_to data_sets_url, notice: 'Data set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
	  def download
          @data_sets =  DataSet.find(params[:id])
           @assets =  @data_sets.assets
      if @data_sets 
           @assets.each do|asset|
        	    Net::SFTP.start('server', 'user', :password => 'password') do |sftp|
				file_name=File.basename(asset.attachment.url)
				file_url=File.basename(asset.attachment.url)
				filepath="/uploads_from_sysomics/uploads"
				download_path=@data_sets.project.user.id.to_s+'/'+asset.id.to_s
				file_partly=File.join(filepath,download_path )
				file=File.join(file_partly,file_name)
        		data = sftp.download!(file)
        		#then again, use the "send_data" method to send the above binary "data" as file. 
        		send_data data, :filename =>file_name 	
        		`redirect_to @data_sets and return` 
        	end
        end
      else
        flash[:error] = "YOU DO NOT HAVE ACCESS TO THIS DataSets"
        redirect_to root_url 
      end
end 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_set
      @data_set = current_user.dara_sets.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      redirect_to(data_sets_url, :notice => 'Access denied to this resource')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_set_params
      params.require(:data_set).permit(:data_set_type_id, :project_id, :create_date, :user_id,:name, :comment,assets_attributes: [:id, :project_id, :attachment,:user_id,:assetable_id,:assetable_type,:_destroy] )
    end
end
