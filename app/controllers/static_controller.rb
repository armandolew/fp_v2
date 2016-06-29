class StaticController < ApplicationController
	layout "application"

	def home
	  @perfumes = Perfume.all
	end
end
