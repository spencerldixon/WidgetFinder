class WidgetsController < ApplicationController
	def index
		if params[:search].present?
			@widgets = Widget.near(params[:search])
					@hash = Gmaps4rails.build_markers(@widgets) do |widget, marker|
			marker.lat widget.latitude
			marker.lng widget.longitude
		end
		else
			@widgets = Widget.all
			@hash = Gmaps4rails.build_markers(@widgets) do |widget, marker|
			marker.lat widget.latitude
			marker.lng widget.longitude
		end
		end

	end
end
