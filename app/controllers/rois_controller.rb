class RoisController < ApplicationController
	def index
		@rois = Roi.all
  end
  def show
  	@roi = Roi.find params[:id]
  end
  def new
  	@roi = Roi.new
  end
  def show
  	@roi = Roi.new
  end
  def create
  	@roi = Roi.new
  	@roi.spent = params[:roi][:spent]
  	@roi.retailers = params[:roi][:retailers]
  	@roi.purchase_volume = params[:roi][:purchase_volume]
  	@roi.contribution_margin = params[:roi][:contribution_margin]
  	@roi.sales_increase = params[:roi][:sales_increase]
  	@roi.leads = params[:roi][:leads]
  	@roi.leads_value = params[:roi][:leads_value]
  	@roi = @roi.spent 
  	if @roi.save
  			puts "Your ROI is #{roi}"
  		else
  			render :new
  		end
  end
end
