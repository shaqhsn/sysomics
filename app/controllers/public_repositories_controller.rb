class PublicRepositoriesController < ApplicationController
  before_action :set_public_repository, only: [:show, :edit, :update, :destroy]
  before_action :admin_only , only: [ :edit, :update, :destroy, :create,:new ]


  # GET /public_repositories
  # GET /public_repositories.json
  def index
    @public_repositories = PublicRepository.all
  end

  # GET /public_repositories/1
  # GET /public_repositories/1.json
  def show
  end

  # GET /public_repositories/new
  def new
    @public_repository = PublicRepository.new
  end

  # GET /public_repositories/1/edit
  def edit
  end

  # POST /public_repositories
  # POST /public_repositories.json
  def create
    @public_repository = PublicRepository.new(public_repository_params)

    respond_to do |format|
      if @public_repository.save
        format.html { redirect_to @public_repository, notice: 'Public repository was successfully created.' }
        format.json { render :show, status: :created, location: @public_repository }
      else
        format.html { render :new }
        format.json { render json: @public_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_repositories/1
  # PATCH/PUT /public_repositories/1.json
  def update
    respond_to do |format|
      if @public_repository.update(public_repository_params)
        format.html { redirect_to @public_repository, notice: 'Public repository was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_repository }
      else
        format.html { render :edit }
        format.json { render json: @public_repository.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_repositories/1
  # DELETE /public_repositories/1.json
  def destroy
    @public_repository.destroy
    respond_to do |format|
      format.html { redirect_to public_repositories_url, notice: 'Public repository was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_repository
      @public_repository = PublicRepository.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_repository_params
      params.require(:public_repository).permit(:name, :url, :record_id)
    end
end
