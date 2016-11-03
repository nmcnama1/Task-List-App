class HelpContainersController < ApplicationController
  before_action :set_help_container, only: [:show, :edit, :update, :destroy]

  # GET /help_containers
  # GET /help_containers.json
  def index
    @help_containers = HelpContainer.all
  end

  # GET /help_containers/1
  # GET /help_containers/1.json
  def show
  end

  # GET /help_containers/new
  def new
    @help_container = HelpContainer.new
  end

  # GET /help_containers/1/edit
  def edit
  end

  # POST /help_containers
  # POST /help_containers.json
  def create
    @help_container = HelpContainer.new(help_container_params)

    respond_to do |format|
      if @help_container.save
        format.html { redirect_to @help_container, notice: 'Help container was successfully created.' }
        format.json { render :show, status: :created, location: @help_container }
      else
        format.html { render :new }
        format.json { render json: @help_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_containers/1
  # PATCH/PUT /help_containers/1.json
  def update
    respond_to do |format|
      if @help_container.update(help_container_params)
        format.html { redirect_to @help_container, notice: 'Help container was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_container }
      else
        format.html { render :edit }
        format.json { render json: @help_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_containers/1
  # DELETE /help_containers/1.json
  def destroy
    @help_container.destroy
    respond_to do |format|
      format.html { redirect_to help_containers_url, notice: 'Help container was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_container
      @help_container = HelpContainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def help_container_params
      params.require(:help_container).permit(:name, :authoer)
    end
end
