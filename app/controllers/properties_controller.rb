class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy ]

  # GET /properties or /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1 or /properties/1.json
  def show
    @stations = @property.stations
  end

  # GET /properties/new
  def new
    @property = Property.new
    2.times { @property.stations.build }
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties or /properties.json
  def create
    @property = Property.new(property_params)
      if @property.save
        redirect_to properties_path, notice: "Property was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /properties/1 or /properties/1.json
  def update
      if @property.update(property_params)
        redirect_to properties_path, notice: "Property was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  end

  # DELETE /properties/1 or /properties/1.json
  def destroy
    @property.destroy
    redirect_to  properties_path, notice: "Property was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:property_name, :rent, :address, :age, :remakers, stations_attributes: [:route_name, :station_name, :walking_minutes, :prorerty_id, :id, :_destroy])
    end
end
