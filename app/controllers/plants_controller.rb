class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.new(reading_params)
  end


  def new
    @plant = Plant.new
  end

  def edit
  end

  def create
    @plant = Plant.new(reading_params)

    # respond_to do |format|
    if @plant.save
      # format.html { redirect_to @reading, notice: 'Reading was successfully created.' }
      # format.json { render :show, status: :created, location: @reading }
      render json: { id: @plant.id }, status: :ok
    else
      # format.html { render :new }

    end
    # end
  end

  def update
    respond_to do |format|
      if @plant.update(reading_params)
        format.html { redirect_to @plant, notice: 'Moisture reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant}
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    plant.destroy
    respond_to do |format|
      format.html { redirect_to measures_url, notice: 'Plant data was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reading
    @plant = Plant.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow permitted values.
  def reading_params
    params.require(:plant).permit(:name,:sensor_id)
  end
end
