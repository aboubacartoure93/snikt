class picturesController < ApplicationController
	
	def create
		@picture = Picture.new(params.require(:picture).permit(:xpos, :ypos, :zpos, :background, :image, :animations, :page_id))
		@picture.page = Page.find(params[:page_id])
		if @picture.save
			redirect_to @picture.page
		else
			redirect_to :back
		end
	end
	def update
		@picture = Picture.find(params[:id])

		respond_to do |format|
			if @picture.update(picture_params)
				format.js {render nothing: true}
			else
				format.js {render nothing: true}
			end

		 
	end

	private

	def picture_params
		params.require(:picture)permit(:xpos, :ypos, :zpos, :background, :image, 
			:animations, :page_id, :width, :height)
		
	end
		
	end
end