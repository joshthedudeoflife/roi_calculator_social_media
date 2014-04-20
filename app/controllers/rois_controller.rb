class RoisController < ApplicationController
	def index
		@rois = ROI.all
  end
  def show
  	@roi = ROI.find params[:id]
  end
  def new
  	@roi = ROI.new
  end
  def show
  	@roi = ROI.new
  end
  def create
  	@roi = ROI.new
  	@roi.spent = params[:roi][:spent]
  end
end
