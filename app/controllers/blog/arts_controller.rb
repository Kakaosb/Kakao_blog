class Blog::ArtsController < ApplicationController
  before_action :set_blog_art, only: [:show, :edit, :update, :destroy]

  def content
    @blog_arts = Blog::Art.all
    respond_to do |format|
      format.js
    end
    end 
  # GET /blog/arts
  # GET /blog/arts.json
  def index
    @blog_arts = Blog::Art.all
    respond_to do |format|
      format.js { render :layout => "content" }
      format.html
    end
  end

  # GET /blog/arts/1
  # GET /blog/arts/1.json
  def show
  end

  # GET /blog/arts/new
  def new
    @blog_art = Blog::Art.new
  end

  # GET /blog/arts/1/edit
  def edit
  end

  # POST /blog/arts
  # POST /blog/arts.json
  def create
    @blog_art = Blog::Art.new(blog_art_params)

    respond_to do |format|
      if @blog_art.save
        format.html { redirect_to @blog_art, notice: 'Art was successfully created.' }
        format.json { render :show, status: :created, location: @blog_art }
      else
        format.html { render :new }
        format.json { render json: @blog_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/arts/1
  # PATCH/PUT /blog/arts/1.json
  def update
    respond_to do |format|
      if @blog_art.update(blog_art_params)
        format.html { redirect_to @blog_art, notice: 'Art was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_art }
      else
        format.html { render :edit }
        format.json { render json: @blog_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/arts/1
  # DELETE /blog/arts/1.json
  def destroy
    @blog_art.destroy
    respond_to do |format|
      format.html { redirect_to blog_arts_url, notice: 'Art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_art
      @blog_art = Blog::Art.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_art_params
      params.require(:blog_art).permit(:title, :content, :tags)
    end
end
