class HelpholdersController < ApplicationController
  before_action :set_helpholder, only: [:show, :edit, :update, :destroy]

  # GET /helpholders
  # GET /helpholders.json
  def index
    @helpholders = Helpholder.all
  end

  # GET /helpholders/1
  # GET /helpholders/1.json
  def show
  end

  # GET /helpholders/new
  def new
    @helpholder = Helpholder.new
  end

  # GET /helpholders/1/edit
  def edit
  end

  # POST /helpholders
  # POST /helpholders.json
  def create
    @helpholder = Helpholder.new(helpholder_params)

    respond_to do |format|
      if @helpholder.save
        format.html { redirect_to @helpholder, notice: 'Helpholder was successfully created.' }
        format.json { render :show, status: :created, location: @helpholder }
      else
        format.html { render :new }
        format.json { render json: @helpholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helpholders/1
  # PATCH/PUT /helpholders/1.json
  def update
    respond_to do |format|
      if @helpholder.update(helpholder_params)
        format.html { redirect_to @helpholder, notice: 'Helpholder was successfully updated.' }
        format.json { render :show, status: :ok, location: @helpholder }
      else
        format.html { render :edit }
        format.json { render json: @helpholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helpholders/1
  # DELETE /helpholders/1.json
  def destroy
    @helpholder.destroy
    respond_to do |format|
      format.html { redirect_to helpholders_url, notice: 'Helpholder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helpholder
      @helpholder = Helpholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def helpholder_params
      params.require(:helpholder).permit(:name, :authoer)
    end
end
