class ImagesController < ApplicationController
  before_action :set_image, only: %i[show update destroy]

  # GET /images
  def index
    @images = Image.all

    render json: @images
  end

  # GET /images/1
  def show
    render json: @image
  end

  # POST /images
  def create
    drawing = Drawing.find(params[:drawing_id])
    puts 'checkout time'
    puts((drawing[:updated_at] - Time.parse(params[:checkout_time])))
    if (drawing[:updated_at] - Time.parse(params[:checkout_time])) < 1
      @image = Image.new(image_params)
      @image.drawing_id = params[:drawing_id]
      if @image.save
        drawing.update({ checked_out: !drawing[:checked_out] })
        render json: { drawing_id: @image.drawing_id }, status: :created
      else
        render json: @image.errors, status: :unprocessable_entity
      end
    else
      render(status: 409, json: { message: 'a new commit has been made since you began editing' })
    end
  end

  # PATCH/PUT /images/1
  # def update
  #   if @image.update(image_params)
  #     render json: @image
  #   else
  #     render json: @image.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /images/1
  # def destroy
  #   @image.destroy
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = Image.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def image_params
    params.require(:image).permit(:data_url, :commit_message, :commit_author)
  end
end
