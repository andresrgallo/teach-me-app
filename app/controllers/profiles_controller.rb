class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :current, :index]
  before_action :authorize_admin, only: [ :index, :destroy ]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    @profiles = Profile.order(:first_name)
  end

  def current
    @profile = current_user.profile
    if @profile.nil?
      new
      render 'new'
    else
      render 'show'
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json

  # all new
  def show
    @reviews = @profile.reviews if @profile.reviews
    respond_to do |format|
        format.html
        format.json {render json: @profile}
    end
end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find_by(id: params[:id])
      # @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:user_id, :first_name, :last_name, :address, :state, :suburb, :postcode, :qualifications, :work_experience, :facebook_account, :twitter_account, :status, :member_id, :avatar, :reviews_attributes => [:id, :comment, :user_id])
    end
end
