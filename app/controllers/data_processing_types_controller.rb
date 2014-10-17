class DataProcessingTypesController < ApplicationController
  before_action :set_data_processing_type, only: [:show, :edit, :update, :destroy]
  before_action :admin_only , only: [ :edit, :update, :destroy, :create,:new ]


  # GET /data_processing_types
  # GET /data_processing_types.json
  def index
    @data_processing_types = DataProcessingType.all
        
  end

  # GET /data_processing_types/1
  # GET /data_processing_types/1.json
  def show
  end

  # GET /data_processing_types/new
  def new
    @data_processing_type = DataProcessingType.new
  end

  # GET /data_processing_types/1/edit
  def edit
  end

  # POST /data_processing_types
  # POST /data_processing_types.json
  def create
    @data_processing_type =  DataProcessingType.new(data_processing_type_params)

    respond_to do |format|
      if @data_processing_type.save
        format.html { redirect_to @data_processing_type, notice: 'Data processing type was successfully created.' }
        format.json { render :show, status: :created, location: @data_processing_type }
      else
        format.html { render :new }
        format.json { render json: @data_processing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_processing_types/1
  # PATCH/PUT /data_processing_types/1.json
  def update
    respond_to do |format|
      if @data_processing_type.update(data_processing_type_params)
        format.html { redirect_to @data_processing_type, notice: 'Data processing type was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_processing_type }
      else
        format.html { render :edit }
        format.json { render json: @data_processing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_processing_types/1
  # DELETE /data_processing_types/1.json
  def destroy
    @data_processing_type.destroy
    respond_to do |format|
      format.html { redirect_to data_processing_types_url, notice: 'Data processing type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_processing_type
      @data_processing_type =  DataProcessingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_processing_type_params
      params.require(:data_processing_type).permit(:name)
    end
end
