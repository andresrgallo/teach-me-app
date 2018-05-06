class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_profile
  before_action :authenticate_user!


def index
  @reviews = @profile.reviews if @profile.reviews
  respond_to do |format|
      format.html { render :index }
      format.json { render :json => @reviews }
    end
end


def user_index
  @reviews = current_user.reviews
  respond_to do |format|
      format.html { render :index }
      format.json { render :json => @reviews }
  end
end


  # GET /reviews/new
  def new
    # @review = Review.new
    @review = @profile.reviews.build
    set_profile
    @review.profile = @profile
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = @profile.reviews.build(review_params)
        if @review.save
            respond_to do |format|
                format.html { redirect_to profile_path(@review.profile)}
                format.json { render :json => @review }
            end
        else
            set_profile
            render :new
        end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
      if @review.update(review_params)
        redirect_to profile_path(@profile)
        # format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        # format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        # format.json { render json: @review.errors, status: :unprocessable_entity }
      end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    def set_profile
      @profile = Profile.find_by(id: params[:profile_id])
      # @profile = Profile.find(params[:profile_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:user_id, :profile_id, :student_id, :rating, :comment)
    end
end
