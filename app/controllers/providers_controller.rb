class ProvidersController < ApplicationController
  before_filter :authenticate_user!

  def list
    @providers = Provider.order('providers.name').all
    @provider_list = [SwitchWiFlyProvider.to_s, CurrentWiFlyProvider.to_s, CounterWiFlyProvider.to_s]
    logger.debug("Show providers list : #{@providers}")
  end

  def edit
    @provider = Provider.find(params[:id])
  end

  def new
    #@provider = Provider.find(params[:id])
  end

end