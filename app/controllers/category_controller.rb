class CategoryController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @post = Category.all
    render json: @post
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Category.all
    render json: @post

  end

  # GET /posts/new
  def new
    @post = Category.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST

  # params.require([:first_name, :last_name, :specialties, :age, :education, :experience, :expected_salary, :description, :fb_name])
  #

  def create
    @post = Category.new
    @post.media = gg[0]
    @post.gamer = gg[1]
    @post.musician = gg[2]
    @post.photographer = gg[3]
    @post.driver = gg[4]
    @post.cook = gg[5]
    @post.trainer = gg[6]
    @post.swimmer = gg[7]
    @post.nurse = gg[8]
    @post.teacher = gg[9]
    @post.artist = gg[10]
    @post.creation = gg[11]
    @post.developer = gg[12]
    @post.pilot = gg[13]
    @post.accountance = gg[14]
    @post.babysister = gg[15]
    @post.gambler = gg[16]
    @post.others = gg[17]

    if @post.save
     render json: @post, status: 201
    else
     render json: { errors: user.errors}, status: 422
    end

  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update

    @post = Category.find(params[:id])
    # render json: @post
    if @post.update_attributes(employee_params)
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
      @post = Category.find(params[:id])
    end

    #
    # create_table "categories", force: :cascade do |t|
    #   t.integer  "card_id"
    #   t.datetime "created_at",   null: false
    #   t.datetime "updated_at",   null: false
    #   t.string   "sport"
    #   t.string   "trainer"
    #   t.string   "swimmer"
    #   t.string   "nurse"
    #   t.string   "teacher"
    #   t.string   "artist"
    #   t.string   "creation"
    #   t.string   "developer"
    #   t.string   "pilot"
    #   t.string   "accountance"
    #   t.string   "babysister"
    #   t.string   "gambler"
    #   t.string   "others"
    #   t.string   "media"
    #   t.string   "musician"
    #   t.string   "photographer"
    #   t.string   "driver"
    #   t.string   "cook"
    #   t.string   "gamer"
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gg
      # params.require([:media])
      params.require([:media, :gamer, :musician, :photographer, :driver, :cook,
        :trainer, :swimmer, :nurse, :teacher, :artist, :creation, :developer,
         :pilot, :accountance, :babysister, :gambler, :others ])
    end



end
