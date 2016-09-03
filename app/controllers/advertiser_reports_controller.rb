class AdvertiserReportsController < ApplicationController
  before_action :authenticate_user!

  include RequestAdvertiserReportData

  def index
    @hola = self.get_token
  end


end