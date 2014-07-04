class WidgetsController < ApplicationController
	def index
		if params[:search].present?
			@location = params[:search]
			@widgets = Widget.near(@location, params[:radius])
			@hash = Gmaps4rails.build_markers(@widgets) do |widget, marker|
				marker.lat widget.latitude
				marker.lng widget.longitude
			end
		else
			@widgets = Widget.all
			@hash = Gmaps4rails.build_markers(@widgets) do |widget, marker|
				if widget.latitude.nil? || widget.longitude.nil?
				else
				marker.lat widget.latitude
				marker.lng widget.longitude
			end
			end
		end
		@location ||= request.location
	end
end
