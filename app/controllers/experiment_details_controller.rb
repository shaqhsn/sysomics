class ExperimentDetailsController < ApplicationController
  before_action :set_experiment_detail, only: [:show, :edit, :update, :destroy]

  # GET /experiment_details
  # GET /experiment_details.json
  def index
      if current_user
          @experiment_details = current_user.experiment_details.all

      else
          redirect_to signin_path, notice: 'Please sign in first.'
      end
  end

  # GET /experiment_details/1
  # GET /experiment_details/1.json
  def show
  end

  # GET /experiment_details/new
  def new
    @experiment_detail = ExperimentDetail.new
  end

  # GET /experiment_details/1/edit
  def edit
  end

  # POST /experiment_details
  # POST /experiment_details.json
  def create
    @experiment_detail =  current_user.experiment_details.new(experiment_detail_params)

    respond_to do |format|
      if @experiment_detail.save
        format.html { redirect_to @experiment_detail, notice: 'Experiment detail was successfully created.' }
        format.json { render :show, status: :created, location: @experiment_detail }
      else
        format.html { render :new }
        format.json { render json: @experiment_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiment_details/1
  # PATCH/PUT /experiment_details/1.json
  def update
    respond_to do |format|
      if @experiment_detail.update(experiment_detail_params)
        format.html { redirect_to @experiment_detail, notice: 'Experiment detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @experiment_detail }
      else
        format.html { render :edit }
        format.json { render json: @experiment_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiment_details/1
  # DELETE /experiment_details/1.json
  def destroy
    @experiment_detail.destroy
    respond_to do |format|
      format.html { redirect_to experiment_details_url, notice: 'Experiment detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experiment_detail
      @experiment_detail =  current_user.experiment_details.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      redirect_to(experiment_details_url, :notice => 'Access denied to this resource')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experiment_detail_params
      params.require(:experiment_detail).permit({ :sample_ids => [] },{ :platform_ids => [] },{ :protocol_ids => [] },:disease_id ,:name,:comment,:description)
    end
end
