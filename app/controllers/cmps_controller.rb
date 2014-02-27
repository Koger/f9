class CmpsController < ApplicationController
  before_action :set_cmp, only: [:show, :edit, :update, :destroy]

  # GET /cmps
  # GET /cmps.json
  def index
    @cmps = Cmp.all
  end

  # GET /cmps/1
  # GET /cmps/1.json
  def show
  end

  # GET /cmps/new
  def new
    @cmp = Cmp.new
  end

  # GET /cmps/1/edit
  def edit
    @cmp = Cmp.find(params[:id])
  end

  # POST /cmps
  # POST /cmps.json
  def create
    @cmp = Cmp.new(cmp_params)

    respond_to do |format|
      if @cmp.save
        format.html { redirect_to @cmp, notice: 'Cmp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cmp }
      else
        format.html { render action: 'new' }
        format.json { render json: @cmp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cmps/1
  # PATCH/PUT /cmps/1.json
  def update
    respond_to do |format|
      if @cmp.update(cmp_params)
        format.html { redirect_to @cmp, notice: 'Cmp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cmp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cmps/1
  # DELETE /cmps/1.json
  def destroy
    @cmp.destroy
    respond_to do |format|
      format.html { redirect_to cmps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cmp
      @cmp = Cmp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cmp_params
      params[:cmp]
    end

#    def user_params
#      params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
#    end
end
