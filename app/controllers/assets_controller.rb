class AssetsController < ApplicationController
  before_action :set_asset, only: [:show, :edit, :update, :destroy]
	 before_filter :signed_in? 
  # GET /assets
  # GET /assets.json
  def index
    #@assets = Asset.all
    @assets = current_user.assets       

  end

  # GET /assets/1
  # GET /assets/1.json
  def show
  	    @asset = current_user.assets.find(params[:id])  

  end

  # GET /assets/new
  def new
    #@asset = Asset.new
        @asset = current_user.assets.new  

  end

  # GET /assets/1/edit
  def edit
      @asset = current_user.assets.find(params[:id])  

  end

  # POST /assets
  # POST /assets.json
  def create
    #@asset = Asset.new(asset_params)
        @asset = current_user.assets.new(params[:asset_params])  


    respond_to do |format|
      if @asset.save
        format.html { redirect_to @asset, notice: 'Asset was successfully created.' }
        format.json { render :show, status: :created, location: @asset }
      else
        format.html { render :new }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assets/1
  # PATCH/PUT /assets/1.json
  def update
      @asset = current_user.assets.find(params[:id])  

    respond_to do |format|
      if @asset.update(asset_params)
        format.html { redirect_to @asset, notice: 'Asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset }
      else
        format.html { render :edit }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.json
  def destroy
      @asset = current_user.assets.find(params[:id])  

    @asset.destroy
    respond_to do |format|
      format.html { redirect_to assets_url, notice: 'Asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
#this action will let the users download the files (after a simple authorization check)  
def get 
  asset = current_user.assets.find_by_id(params[:id]) 
  if asset         
    #redirect to amazon S3 url which will let the user download the file automatically 
    data = open(URI.parse(URI.encode(asset.uploaded_file.url))) 
    send_data data, :filename => asset.uploaded_file_file_name 

  else
    flash[:error] = "you do not have privilege to visit this link !"
    redirect_to assets_path 
  end
 
end  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset
      @asset = Asset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_params
    params.require(:asset).permit(:user_id,:uploaded_file)
    end
end
