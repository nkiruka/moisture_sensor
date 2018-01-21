class SensorsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @sensors =  Sensor.all
    # if @sensors.any?
    #     render json: @sensors
    #   else
    #     render json: {}, status: :not_found
    #   end
  end

  def new
    @sensor = Sensor.new
  end

  def create
    sensor = Sensor.new(sensor_params)
    if sensor.save
    render json: { id: sensor.id }, status: :ok
    else
    render json: { errors: sensor.errors.messages },
      status: :bad_request
    end

    # @sensor = Sensor.new(sensor_params)
    # respond_to do |format|
    #   if @sensor.save
    #     format.html { redirect_to @sensor, notice: 'Sensor was successfully created.' }
    #     format.json { render :show, status: :created, location: @sensor }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @sensor.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def show
    @sensor = Sensor.find_by(id: params[:id])
    @readings = @sensor.readings.paginate(:page => params[:page], :per_page => 20)
    @sensor_readings = @sensor.readings.order('created_at desc').limit(10)
                          .map{|m| { time: m.created_at,
                                     value: m.value } }
    #
    # if sensor
    #   render(
    #     json: sensor.as_json(only: [:name, :description, :Model]),
    #     status: :ok
    #   )
    # else
    #   render json: {nothing: true}, status: :not_found
    # end

    # @sensor_readings = @sensor.readings.map{|r| { time: r.created_at, value: r.value } }
  end

  def edit
    @sensor = Sensor.find(params[:id])
  end

  def update
    @sensor = Sensor.new(sensor_params)

    respond_to do |format|
      if @sensor.update(sensor_params)
        format.html { redirect_to @sensor, notice: 'Sensor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor }
      else
        format.html { render :edit }
        format.json { render json: @sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    sensor = Sensor.find(params[:id])
    sensor.destroy

    respond_to do |format|
      format.html { redirect_to sensors_url, notice: 'Sensor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sensor
    @sensor = Sensor.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow what is required.
  def sensor_params
    params.require(:sensor).permit(:name, :description, :model)
  end
end
