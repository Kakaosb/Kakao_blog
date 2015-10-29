class Blog::SportsController < ApplicationController
  before_action :set_blog_sport, only: [:show, :edit, :update, :destroy]

 def content
    @blog_sports = Blog::Sport.all
    respond_to do |format|
      format.js
    end
    end 
  # GET /blog/sports
  # GET /blog/sports.json
  def index
    @blog_sports = Blog::Sport.all
  end

  # GET /blog/sports/1
  # GET /blog/sports/1.json
  def show
  end

  # GET /blog/sports/new
  def new
    @blog_sport = Blog::Sport.new
  end

  # GET /blog/sports/1/edit
  def edit
  end

  # POST /blog/sports
  # POST /blog/sports.json
  def create
    @blog_sport = Blog::Sport.new(blog_sport_params)

    respond_to do |format|
      if @blog_sport.save
        format.html { redirect_to @blog_sport, notice: 'Sport was successfully created.' }
        format.json { render :show, status: :created, location: @blog_sport }
      else
        format.html { render :new }
        format.json { render json: @blog_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/sports/1
  # PATCH/PUT /blog/sports/1.json
  def update
    respond_to do |format|
      if @blog_sport.update(blog_sport_params)
        format.html { redirect_to @blog_sport, notice: 'Sport was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_sport }
      else
        format.html { render :edit }
        format.json { render json: @blog_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/sports/1
  # DELETE /blog/sports/1.json
  def destroy
    @blog_sport.destroy
    respond_to do |format|
      format.html { redirect_to blog_sports_url, notice: 'Sport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_sport
      @blog_sport = Blog::Sport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_sport_params
      params.require(:blog_sport).permit(:title, :content, :tags)
    end
end
