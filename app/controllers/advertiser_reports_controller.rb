class AdvertiserReportsController < ApplicationController
  before_action :authenticate_user!

  include RequestAdvertiserReportData

  def index

  end

  def generate_report

  end

  def show

  end

end