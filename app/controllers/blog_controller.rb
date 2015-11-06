class BlogController < ApplicationController
	layout 'blog'
	def main
	@blog_programms = Blog::Programm.all
	@blog_arts = Blog::Art.all
	@blog_sports = Blog::Sport.all
	end

<<<<<<< HEAD
	def gallery
	end
=======
>>>>>>> 1f337a3a6545061a062b16243a2947805eb5ebe0
end