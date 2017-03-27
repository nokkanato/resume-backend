class CardController < ApplicationController

before_action :set_post, only: [:show, :edit, :update, :destroy]

def index
  @post = Card.all
  render json: @post
end

# GET /posts/1
# GET /posts/1.json
def show
  respond_with Card.find(params[:id])

  # @post = Card.all
  # render json: @post

end

# GET /posts/new
def new
  @post = Card.new
end

# GET /posts/1/edit
def edit
end

# POST /posts
# POST

# params.require([:first_name, :last_name, :specialties, :age, :education, :experience, :expected_salary, :description, :fb_name])
#

def create
  @post = Card.new
  @post.first_name = employee_params[0]
  @post.last_name = employee_params[1]
  @post.specialties = employee_params[2]
  @post.age = employee_params[3]
  @post.education = employee_params[4]
  @post.experience = employee_params[5]
  @post.expected_salary = employee_params[6]
  @post.description = employee_params[7]
  @post.fb_name = employee_params[8]

  if @post.save
   render json: @post, status: 201
  else
   render json: { errors: user.errors}, status: 422
  end

end

# PATCH/PUT /posts/1
# PATCH/PUT /posts/1.json
def update

  @post = Card.find(params[:id])
  # render json: @post
  if @post.update_attributes(card_params)
    render json: @post
    # Handle a successful update.
  else
    render 'lol'
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
    @post = Card.find(params[:id])
    render json: @post
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

    params.require([:first_name, :last_name, :specialties, :age, :education, :experience, :expected_salary, :description, :fb_name])
  end
  def card_params
    params.require(:card).permit(:first_name, :last_name, :specialties, :age, :education, :experience, :expected_salary, :description, :fb_name)
  end

end
