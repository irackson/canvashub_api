class DrawingsController < ApplicationController
  before_action :set_drawing, only: %i[show update destroy]

  # GET /drawings
  def index
    @drawings = Drawing.all
    @latest_images = []
    @drawings.each_with_index { |e, i| @latest_images[i] = e.images.order(created_at: :desc).first }
    render json: { all_drawings: @drawings, latest_versions: @latest_images }
  end

  # GET /drawings/1
  def show
    render json: @drawing.to_json(include: :images)
  end

  # POST /drawings
  def create
    @drawing = Drawing.new(drawing_params)

    if @drawing.save
      render json: @drawing, status: :created, location: @drawing
    else
      render json: @drawing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drawings/1
  # def update
  #   if @drawing[:checked_out]
  #     render(status: 409, json: { message: 'drawing is currently checked out so edits cannot be made at this time' })
  #   elsif @drawing.update(update_params)
  #     render json: @drawing
  #   else
  #     render json: @drawing.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /drawings/1
  def destroy
    minimum_time = 60 * 5 # 1min * number of minutes (react env)
    minimum_num = 3
    time_since_modified = Time.now - @drawing.updated_at
    puts time_since_modified
    if (@drawing.images.length <= minimum_num) || ((@drawing.images.length > minimum_num) && (time_since_modified >= minimum_time))
      @drawing.destroy
    else
      render(status: 409, json: { message: "cannot delete as less than #{minimum_time} seconds have passed since last update" })
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_drawing
    @drawing = Drawing.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def drawing_params
    params.require(:drawing).permit(:title, :creator, :height, :width, :checked_out)
  end

  def update_params
    params.require(:drawing).permit(:checked_out)
  end
end
