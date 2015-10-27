class PicturesController < ApplicationController
	
	def create
		@picture = Picture.new(params.require(:picture).permit(:xpos, :ypos, :zpos, :background, :image, :animations, :page_id))
		@picture.page = Page.find(params[:page_id])
		if @picture.save
			redirect_to @picture.page
		else
			redirect_to :back
		end
	end
end