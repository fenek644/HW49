class PoImagesController < ApplicationController
  before_action :set_po_image, only: [:show, :edit, :update, :destroy]

  # GET /po_images
  # GET /po_images.json
  def index
    @po_images = PoImage.all
  end

  # GET /po_images/1
  # GET /po_images/1.json
  def show
  end

  # GET /po_images/new
  def new
    @po_image = PoImage.new
  end

  # GET /po_images/1/edit
  def edit
  end

  # POST /po_images
  # POST /po_images.json
  def create
    @po_image = PoImage.new(po_image_params)

    respond_to do |format|
      if @po_image.save
        format.html { redirect_to @po_image, notice: 'Po image was successfully created.' }
        format.json { render :show, status: :created, location: @po_image }
      else
        format.html { render :new }
        format.json { render json: @po_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /po_images/1
  # PATCH/PUT /po_images/1.json
  def update
    respond_to do |format|
      if @po_image.update(po_image_params)
        format.html { redirect_to @po_image, notice: 'Po image was successfully updated.' }
        format.json { render :show, status: :ok, location: @po_image }
      else
        format.html { render :edit }
        format.json { render json: @po_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /po_images/1
  # DELETE /po_images/1.json
  def destroy
    @po_image.destroy
    respond_to do |format|
      format.html { redirect_to po_images_url, notice: 'Po image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_po_image
      @po_image = PoImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def po_image_params
      params.require(:po_image).permit(:url, :user_id)
    end
end
