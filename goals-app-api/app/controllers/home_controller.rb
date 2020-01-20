class HomeController < ApplicationController

	def index
		render json: { message: 'Achieve your goals!' }
	end

end