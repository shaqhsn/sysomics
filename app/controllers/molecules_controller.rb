class MoleculesController < ApplicationController
  before_action :set_molecule, only: [:show, :edit, :update, :destroy]
  before_action :admin_only , only: [ :edit, :update, :destroy, :create,:new ]


  # GET /molecules
  # GET /molecules.json
  def index
    @molecules = Molecule.all
  end

  # GET /molecules/1
  # GET /molecules/1.json
  def show
  end

  # GET /molecules/new
  def new
    @molecule = Molecule.new
  end

  # GET /molecules/1/edit
  def edit
  end

  # POST /molecules
  # POST /molecules.json
  def create
    @molecule = Molecule.new(molecule_params)

    respond_to do |format|
      if @molecule.save
        format.html { redirect_to @molecule, notice: 'Molecule was successfully created.' }
        format.json { render :show, status: :created, location: @molecule }
      else
        format.html { render :new }
        format.json { render json: @molecule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /molecules/1
  # PATCH/PUT /molecules/1.json
  def update
    respond_to do |format|
      if @molecule.update(molecule_params)
        format.html { redirect_to @molecule, notice: 'Molecule was successfully updated.' }
        format.json { render :show, status: :ok, location: @molecule }
      else
        format.html { render :edit }
        format.json { render json: @molecule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /molecules/1
  # DELETE /molecules/1.json
  def destroy
    @molecule.destroy
    respond_to do |format|
      format.html { redirect_to molecules_url, notice: 'Molecule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_molecule
      @molecule = Molecule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def molecule_params
      params.require(:molecule).permit(:name)
    end
end
