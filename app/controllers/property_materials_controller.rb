class PropertyMaterialsController < ApplicationController
  before_action :set_property_material, only: [:show, :edit, :update, :destroy]

  # GET /property_materials
  # GET /property_materials.json
  def index
    @property_materials = PropertyMaterial.all
  end

  # GET /property_materials/1
  # GET /property_materials/1.json
  def show
  end

  # GET /property_materials/new
  def new
    @property_material = PropertyMaterial.new
  end

  # GET /property_materials/1/edit
  def edit
  end

  # POST /property_materials
  # POST /property_materials.json
  def create
    @property_material = PropertyMaterial.new(property_material_params)

    respond_to do |format|
      if @property_material.save
        format.html { redirect_to @property_material, notice: 'Property material was successfully created.' }
        format.json { render :show, status: :created, location: @property_material }
      else
        format.html { render :new }
        format.json { render json: @property_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_materials/1
  # PATCH/PUT /property_materials/1.json
  def update
    respond_to do |format|
      if @property_material.update(property_material_params)
        format.html { redirect_to @property_material, notice: 'Property material was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_material }
      else
        format.html { render :edit }
        format.json { render json: @property_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_materials/1
  # DELETE /property_materials/1.json
  def destroy
    @property_material.destroy
    respond_to do |format|
      format.html { redirect_to property_materials_url, notice: 'Property material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_material
      @property_material = PropertyMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_material_params
      params.require(:property_material).permit(:property_id, :materail_id)
    end
end
