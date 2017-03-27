class EmployerProfileController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /employee_profiles
  def index
    @post = EmployerProfile.all
    render json: @post
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = EmployerProfile.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    raise employee_params.to_json
    @post = EmployerProfile.new(employee_params)
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
    @post = EmployerProfile.find(params[:id])
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
      @post = EmployerProfile.find(params[:id])
    end

    #
    # create_table "employer_profiles", force: :cascade do |t|
    #   t.string   "username"
    #   t.string   "postion_need"
    #   t.string   "requirement"
    #   t.string   "salary_suggest"
    #   t.string   "description"
    #   t.datetime "created_at",     null: false
    #   t.datetime "updated_at",     null: false
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employer).permit(:first_name, :last_name, :postion_need, :requirement, :salary_suggest, :description, :fb_name)
    end
end
