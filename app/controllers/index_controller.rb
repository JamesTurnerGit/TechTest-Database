class IndexController < ApplicationController
  include IndexHelper
  def set
    createRecord(params)
  end

  def get
    respond_to do |format|
      format.text {render :text => getValue(params[:key])}
    end
  end
end
