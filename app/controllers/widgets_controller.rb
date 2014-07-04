class WidgetsController < ApplicationController
	def index
		if params[:search].present?
			@widgets = Widget.near(params[:search])
		else
			@widgets = Widget.all
		end
	end
end
