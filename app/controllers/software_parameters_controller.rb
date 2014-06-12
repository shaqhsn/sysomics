class SoftwareParametersController < ApplicationController
  before_action :set_software_parameter, only: [:show, :edit, :update, :destroy]

  # GET /software_parameters
  # GET /software_parameters.json
  def index
    @software_parameters = SoftwareParameter.all
  end

  # GET /software_parameters/1
  # GET /software_parameters/1.json
  def show
  end

  # GET /software_parameters/new
  def new
    @software_parameter = SoftwareParameter.new
  end

  # GET /software_parameters/1/edit
  def edit
  end

  # POST /software_parameters
  # POST /software_parameters.json
  def create
    @software_parameter = SoftwareParameter.new(software_parameter_params)

    respond_to do |format|
      if @software_parameter.save
        format.html { redirect_to @software_parameter, notice: 'Software parameter was successfully created.' }
        format.json { render :show, status: :created, location: @software_parameter }
      else
        format.html { render :new }
        format.json { render json: @software_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /software_parameters/1
  # PATCH/PUT /software_parameters/1.json
  def update
    respond_to do |format|
      if @software_parameter.update(software_parameter_params)
        format.html { redirect_to @software_parameter, notice: 'Software parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @software_parameter }
      else
        format.html { render :edit }
        format.json { render json: @software_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /software_parameters/1
  # DELETE /software_parameters/1.json
  def destroy
    @software_parameter.destroy
    respond_to do |format|
      format.html { redirect_to software_parameters_url, notice: 'Software parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_software_parameter
      @software_parameter = SoftwareParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def software_parameter_params
      params.require(:software_parameter).permit(:name, :value, :software_id)
    end
end
