class VehicelsController < ApplicationController
  before_action :set_user,only: [:new,:edit,:update,:show,:destroy,:create]
  before_action :set_vehicel, only: [:show, :edit, :update, :destroy]

  # GET /vehicels
  # GET /vehicels.json
  def index
    @vehicels = Vehicel.where("user_id = ?", params[:user_id]).order(created_at: :desc)
    return @vehicels = Vehicel.where("vehicel_brand like ? or vehicel_model like ?", "%#{params[:search_field].downcase}%" , "%#{params[:search_field].downcase}%").all if params[:commit] == "Search"
  end
  # GET /vehicels/1
  # GET /vehicels/1.json
  def show
    @vehicel = @user.vehicels.find(params[:id])
  end

  # GET /vehicels/new
  def new
   
   @vehicel = @user.vehicels.build
  end

  # GET /vehicels/1/edit
  def edit
  end

  # POST /vehicels
  # POST /vehicels.json
  def create

    @vehicel = @user.vehicels.create(vehicel_params)
    respond_to do |format|
      if @vehicel.save
        format.html { redirect_to user_vehicels_path(@user, @vehicel) }
        format.json { render :show, status: :created, location: @vehicel }
      else
        format.html { render :new }
        format.json { render json: @vehicel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicels/1
  # PATCH/PUT /vehicels/1.json
  def update
    @vehicel = @user.vehicels.find(params[:id])
    respond_to do |format|
      if @vehicel.update(vehicel_params)
        format.html { redirect_to user_vehicels_path(@user), notice: 'Vehicel was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicel }
      else
        format.html { render :edit }
        format.json { render json: @vehicel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicels/1
  # DELETE /vehicels/1.json
  def destroy
    @vehicel =  @user.vehicels.find(params[:id])
    @vehicel.destroy
    respond_to do |format|
      format.html { redirect_to user_vehicels_path(@user) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicel
      @vehicel = Vehicel.find(params[:id])
    end

    def set_user
    @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicel_params
      params.require(:vehicel).permit(:First_name, :surname, :vehicel_brand, :vehicel_model, :vehicel_color, :plate_number, :user_id)
    end
end
