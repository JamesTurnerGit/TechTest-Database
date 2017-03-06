class IndexController < ApplicationController
  include IndexHelper
  def set
    createRecord(params)
    respond_to do |format|
      format.text {render :plain => "thanks"}
    end
  end

  def get
    respond_to do |format|
      format.text {render :plain => getValue(params[:key])}
    end
  end
end
