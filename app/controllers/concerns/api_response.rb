module ApiResponse
    include ActiveSupport::Concern
    def succesful_api_response(status1,message2,data3,http_response)
        render json:{status: status1,message: message2,data: data3},status: http_response
    end
    def failed_api_response(status1,message2,data3,http_response)
        render json:{status: status1,message: message2,data: data3},status: http_response
    end
    def no_data_api_response(status1,message2,data3,http_response)
        render json:{status: status1,message: message2,data: data3},status: http_response
    end
end    