class BlogController < ApplicationController
	layout 'blog'
	def main
	@blog_programms = Blog::Programm.all
	@blog_arts = Blog::Art.all
	@blog_sports = Blog::Sport.all
	end


	def gallery
	end

end