class EmployeeProfileController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /employee_profiles
  def index
    @post = EmployeeProfile.all
    render json: @post
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = EmployeeProfile.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = EmployeeProfile.new(employee_params)
    # @post.user = @current_user

    # respond_to do |format|
    #   if @post.save
    if @post.save
     render json: @post, status: 201
    else
     render json: { errors: user.errors}, status: 422
    end

  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post = EmployeeProfile.find(params[:id])
    # render json: @post
    if @post.update_attributes(employee_params)
      render json: @post
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = EmployeeProfile.find(params[:id])
    end


    # create_table "employee_profiles", force: :cascade do |t|
    #   t.string   "username"
    #   t.string   "specialties"
    #   t.string   "age"
    #   t.string   "education"
    #   t.string   "experience"
    #   t.string   "expected_salary"
    #   t.string   "description"
    #   t.string   "fb_name"
    #   t.datetime "created_at",      null: false
    #   t.datetime "updated_at",      null: false
    # end


    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :specialties, :age, :education, :experience, :expected_salary, :description, :fb_name)
    end
end
