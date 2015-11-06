class Blog::ProgrammsController < ApplicationController
  before_action :set_blog_programm, only: [:show, :edit, :update, :destroy]
  layout 'blog'
  def content
    @blog_programms = Blog::Programm.all
    respond_to do |format|
      format.js
    end
    end 
  # GET /blog/programms
  # GET /blog/programms.json
  def index
    @blog_programms = Blog::Programm.all
  end

  # GET /blog/programms/1
  # GET /blog/programms/1.json
  def show
  end

  # GET /blog/programms/new
  def new
    @blog_programm = Blog::Programm.new
  end

  # GET /blog/programms/1/edit
  def edit
  end

  # POST /blog/programms
  # POST /blog/programms.json
  def create
    @blog_programm = Blog::Programm.new(blog_programm_params)

    respond_to do |format|
      if @blog_programm.save
        format.html { redirect_to @blog_programm, notice: 'Programm was successfully created.' }
        format.json { render :show, status: :created, location: @blog_programm }
      else
        format.html { render :new }
        format.json { render json: @blog_programm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/programms/1
  # PATCH/PUT /blog/programms/1.json
  def update
    respond_to do |format|
      if @blog_programm.update(blog_programm_params)
        format.html { redirect_to @blog_programm, notice: 'Programm was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_programm }
      else
        format.html { render :edit }
        format.json { render json: @blog_programm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/programms/1
  # DELETE /blog/programms/1.json
  def destroy
    @blog_programm.destroy
    respond_to do |format|
      format.html { redirect_to blog_programms_url, notice: 'Programm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_programm
      @blog_programm = Blog::Programm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_programm_params
      params.require(:blog_programm).permit(:title, :content, :tags)
    end
end
