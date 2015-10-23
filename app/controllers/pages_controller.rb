class PagesController < ApplicationController
	def index
		Post.page(params[:page]).order('created_at DESC')
	end
end