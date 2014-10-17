class DataSetTypesController < ApplicationController
  before_action :set_data_set_type, only: [:show, :edit, :update, :destroy]
  before_action :admin_only , only: [ :edit, :update, :destroy, :create,:new ]


  # GET /data_set_types
  # GET /data_set_types.json
  def index
    @data_set_types = DataSetType.all
  end

  # GET /data_set_types/1
  # GET /data_set_types/1.json
  def show
  end

  # GET /data_set_types/new
  def new
    @data_set_type = DataSetType.new
  end

  # GET /data_set_types/1/edit
  def edit
  end

  # POST /data_set_types
  # POST /data_set_types.json
  def create
    @data_set_type = DataSetType.new(data_set_type_params)

    respond_to do |format|
      if @data_set_type.save
        format.html { redirect_to @data_set_type, notice: 'Data set type was successfully created.' }
        format.json { render :show, status: :created, location: @data_set_type }
      else
        format.html { render :new }
        format.json { render json: @data_set_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_set_types/1
  # PATCH/PUT /data_set_types/1.json
  def update
    respond_to do |format|
      if @data_set_type.update(data_set_type_params)
        format.html { redirect_to @data_set_type, notice: 'Data set type was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_set_type }
      else
        format.html { render :edit }
        format.json { render json: @data_set_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_set_types/1
  # DELETE /data_set_types/1.json
  def destroy
    @data_set_type.destroy
    respond_to do |format|
      format.html { redirect_to data_set_types_url, notice: 'Data set type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_set_type
      @data_set_type = DataSetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_set_type_params
      params.require(:data_set_type).permit(:name)
    end
end
