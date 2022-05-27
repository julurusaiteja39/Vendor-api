class Api::V1::VendorinfosController < ApplicationController
  include ApiResponse
  before_action :vendor_params, only: %i[ create update ]
  before_action :find_order, only: %i[ destroy update show]
  def index
    @vendors = VendorInfo.all
    render json: @vendors
  end

  def show
    succesful_api_response("success","vendor  has been fetched",@vendor, :ok)
   
  end

  def update
    if @vendor.update(vendor_params)
      succesful_api_response("success","vendor  has been updated",@vendor, :ok)
    else
      failed_api_response("Failure","vendor hasn't been updated due to following erros   #{@vendor.errors.full_messages}","",:unprocessable_entity)
    end

  end

  def destroy
    if @vendor.destroy
      succesful_api_response("success","vendor  has been destroyed","", :ok)
    else
      failed_api_response("Failure","vendor hasn't been destroyed due to following erros \n#{@vendor.errors}","",:unprocessable_entity)

     
   end  

  end

  def create
    @vendor=VendorInfo.new(vendor_params)
    if @vendor.save
      succesful_api_response("success","Vendor  has been created",@vendor, :ok)
    else 
      failed_api_response("Failure","vendor hasn't been created due to following errors  #{@vendor.errors.full_messages}","",:unprocessable_entity)
    end
  end
  private
  def vendor_params
    params.require(:VendorInfo).permit(:vendor_company_name,:vendor_name,:vendor_email,:vendor_address)
  end
  def find_order
    begin
      @vendor = VendorInfo.find(params[:id])  
    rescue Exception => e
      no_data_api_response("Failure","No vendor was found with given id","",:not_found)
    end  
  end
end
