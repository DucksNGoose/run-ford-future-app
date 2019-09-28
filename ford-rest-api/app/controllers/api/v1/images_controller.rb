module Api
    module V1
        class ImagesController < ApplicationController
           def index
                images = Image.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Images already loaded', data:images},status: :ok 
           end  
        end
    end
end
