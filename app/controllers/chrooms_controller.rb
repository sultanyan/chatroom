class ChroomsController < ApplicationController
  before_action :set_chroom, only: [:show, :edit, :update, :destroy]

  # GET /chrooms
  # GET /chrooms.json
  def index
    @chrooms = Chroom.all
  end

  # GET /chrooms/1
  # GET /chrooms/1.json
  def show
  end

  # GET /chrooms/new
  def new
    @chroom = Chroom.new
  end

  # GET /chrooms/1/edit
  def edit
  end

  # POST /chrooms
  # POST /chrooms.json
  def create
    @chroom = Chroom.new(chroom_params)

    respond_to do |format|
      if @chroom.save
        format.html { redirect_to @chroom, notice: 'Chroom was successfully created.' }
        format.json { render :show, status: :created, location: @chroom }
      else
        format.html { render :new }
        format.json { render json: @chroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chrooms/1
  # PATCH/PUT /chrooms/1.json
  def update
    respond_to do |format|
      if @chroom.update(chroom_params)
        format.html { redirect_to @chroom, notice: 'Chroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @chroom }
      else
        format.html { render :edit }
        format.json { render json: @chroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chrooms/1
  # DELETE /chrooms/1.json
  def destroy
    @chroom.destroy
    respond_to do |format|
      format.html { redirect_to chrooms_url, notice: 'Chroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chroom
      @chroom = Chroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chroom_params
      params.require(:chroom).permit(:name)
    end
end
