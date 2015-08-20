class SearchesController < ApplicationController

	def new
	  @search = Search.new
	  @age = Dog.uniq.pluck(:age)
	  @gender = Dog.uniq.pluck(:gender)
	  @size = Dog.uniq.pluck(:size)
	end

	def create
	  @search = Search.create(search_params)
	  redirect_to @search
	end

	def show
	  @search = Search.find(params[:id])
	end

	def profile
	  @search = Search.find(params[:id])
	end

	private	

	def search_params
	   params.require(:search).permit(:location, :breed, :age, :gender, :size)
	end

end