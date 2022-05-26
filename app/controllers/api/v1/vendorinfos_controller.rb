class Api::V1::VendorinfosController < ApplicationController
  def index
    @vendors = VendorInfo.all
    render json: @vendors
  end

  def show
  end

  def update
  end

  def destroy
  end

  def create
  end
end
