class WidgetsController < ApplicationController
	def index
		if params[:search].present?
			@location = params[:search]
			@widgets = Widget.near(@location, params[:radius])
		else
			@widgets = Widget.all
		end

		@location ||= request.location
		@hash = Gmaps4rails.build_markers(@widgets) do |widget, marker|
			marker.lat widget.latitude
			marker.lng widget.longitude
		end
	end

	def buy
		@widget = Widget.find(params[:id])
		# Do logic to handle the purchase of a widget here. Remove it from the database, notify for widget to be shipped etc
		render 'widgets/success'
	end
end
