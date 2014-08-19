class DataProcessingsController < ApplicationController
  before_action :set_data_processing, only: [:show, :edit, :update, :destroy]

  # GET /data_processings
  # GET /data_processings.json
  def index
    @data_processings = DataProcessing.all
  end

  # GET /data_processings/1
  # GET /data_processings/1.json
  def show
  end

  # GET /data_processings/new
  def new
    @data_processing = DataProcessing.new
        @asset = @data_processing.assets.build

  end

  # GET /data_processings/1/edit
  def edit
  end

  # POST /data_processings
  # POST /data_processings.json
  def create
    @data_processing = DataProcessing.new(data_processing_params)

    respond_to do |format|
        if @data_processing.save
            if params[:assets] && params[:assets]['attachment'] 
               params[:assets]['attachment'].each do |a|
                 @asset = @data_processing.assets.create!(:attachment => a,:assetable_id => @data_processing.id,:user_id=>@data_processing.data_set.project.user.id) 
             end
            end
            format.html { redirect_to @data_processing, notice: 'Data data_processing was successfully created.' }
            format.json { render :show, status: :created, location: @project }
        else #if save else
            format.html { render :new }
            format.json { render json: @data_processing.errors, status: :unprocessable_entity }
        end
    end #respond to 
  end
  

  # PATCH/PUT /data_processings/1
  # PATCH/PUT /data_processings/1.json
  def update
    respond_to do |format|
      if @data_processing.update(data_processing_params)
        format.html { redirect_to @data_processing, notice: 'Data processing was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_processing }
      else
        format.html { render :edit }
        format.json { render json: @data_processing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_processings/1
  # DELETE /data_processings/1.json
  def destroy
    @data_processing.destroy
    respond_to do |format|
      format.html { redirect_to data_processings_url, notice: 'Data processing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
	  def download
          @data_processing =  DataProcessing.find(params[:id])
           @assets =  @data_processing.assets
      if @data_processing 
           @assets.each do|asset|
        	    Net::SFTP.start('glenn.c3se.chalmers.se', 'user', :password => 'password') do |sftp|
				file_name=File.basename(asset.attachment.url)
				file_url=File.basename(asset.attachment.url)
				filepath=".../uploads"
				download_path=@data_processing.data_set.project.user.id.to_s+'/'+asset.id.to_s
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
    def set_data_processing
      @data_processing = DataProcessing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_processing_params
      params.require(:data_processing).permit(:data_processing_type_id, :software_id, :data_set_id, :command,:note,:description,assets_attributes: [:id, :project_id, :attachment,:user_id,:assetable_id,:assetable_type,:_destroy] )
    end
end
