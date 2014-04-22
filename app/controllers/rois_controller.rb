class RoisController < ApplicationController
	def index
		@rois = Roi.all
  end
  def show
  	@roi = Roi.find params[:id]
  end
  def new
  	@roi = Roi.new
    #use logic here
    
    if params[:roi] == nil
      @roi = Roi.new
    else
    @roi = Roi.new
    @roi.spent = params[:roi][:spent]
    @roi.retailers = params[:roi][:retailers]
    @roi.purchase_volume = params[:roi][:purchase_volume]
    @roi.contribution_margin = params[:roi][:contribution_margin]
    @roi.sales_increase = params[:roi][:sales_increase]
    @roi.leads = params[:roi][:leads]
    @roi.leads_value = params[:roi][:leads_value]
    @renderpartial = true
    end
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
    
  end
end
