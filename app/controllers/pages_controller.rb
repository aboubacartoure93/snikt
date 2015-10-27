class PagesController < ApplicationController
	before_action :set_book, only: [:index, :new]


	def index
		@pages = @book.pages
	end

	def new
		@url = [@book, Page.new]
		@picture = Picture.new
	end

	def show
		@page = Page.find(params[:id])
		@picture = Picture.new
		@url = [@page, @picture]
	end

	def create
		@page = Page.new(page_params)
		if @page.save
			redirect_to @page, notice: "New page created"
		else
			render :new
		end
	end

	private

	def page_params
		params.require(:page).permit(pictures_attributes: [:xpos, :ypos, :zpos, :background, :image, :animations])
	end

	def set_book
		@book = Book.find(params[:book_id])
	end

end